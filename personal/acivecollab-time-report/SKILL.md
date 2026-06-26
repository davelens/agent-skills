---
name: activecollab-time-report
description: Generate copy-ready work summaries from ActiveCollab time records in the local ac-tui SQLite cache. Use when the user asks for ActiveCollab time records, time reports, status summaries, work done in a date range, or output grouped per task.
---

# ActiveCollab Time Report

## Output language

Respond in English by default. If the user explicitly requests Dutch, write the report in Dutch.

## Quick start

Use the local read-only cache:

```bash
sqlite3 "file:///home/davelens/.cache/ac-tui/ac-tui-167099.db?mode=ro"
```

Default user is `Dave Lens` (`users.id = 2`) unless the user asks for someone else.

## Workflow

1. Parse the requested date range.
   - `22/6 to 25/6` means current year unless user gives another year.
   - Convert to ISO dates: `YYYY-MM-DD`.
2. Query time records for the user and date range.
3. Group records by `task_id`.
4. Enrich each task with:
   - task title
   - project id/name
   - time record summaries
   - task body
   - comments created inside the same date range
5. Write one concise sub-50-word summary per task.
6. If time record summary is empty, infer work from same-range comments and task body; mention uncertainty only when detail is truly missing.
7. Use exact requested template unless user asks otherwise.

## SQL

List records:

```sql
SELECT tr.date, tr.value, tr.summary, tr.task_id,
       t.name AS task_name, t.project_id, p.name AS project_name
FROM time_records tr
JOIN tasks t ON t.id = tr.task_id
LEFT JOIN projects p ON p.id = t.project_id
WHERE tr.user_id = 2
  AND tr.date BETWEEN 'YYYY-MM-DD' AND 'YYYY-MM-DD'
ORDER BY tr.date, tr.task_id;
```

Enrich grouped tasks:

```sql
WITH rec AS (
  SELECT task_id,
         SUM(value) AS hours,
         MIN(date) AS first_date,
         GROUP_CONCAT(date || ' (' || value || 'h): ' ||
           COALESCE(NULLIF(summary, ''), '[no summary]'), char(10)) AS records
  FROM time_records
  WHERE user_id = 2
    AND date BETWEEN 'YYYY-MM-DD' AND 'YYYY-MM-DD'
  GROUP BY task_id
)
SELECT rec.task_id, t.name, t.project_id, p.name AS project,
       tl.name AS task_list, rec.hours, rec.records,
       COALESCE(t.body, '') AS body
FROM rec
JOIN tasks t ON t.id = rec.task_id
LEFT JOIN projects p ON p.id = t.project_id
LEFT JOIN task_lists tl ON tl.id = t.task_list_id
ORDER BY rec.first_date, rec.task_id;
```

Get comments for those tasks in range:

```sql
SELECT c.task_id, datetime(c.created_on, 'unixepoch', 'localtime') AS created,
       c.author_name, c.body
FROM comments c
WHERE c.task_id IN (TASK_IDS)
  AND date(datetime(c.created_on, 'unixepoch', 'localtime'))
      BETWEEN 'YYYY-MM-DD' AND 'YYYY-MM-DD'
ORDER BY c.task_id, c.created_on;
```

## URL format

```text
https://next-app.activecollab.com/167099/projects/{project_id}/tasks/{task_id}
```

## Default report template

```text
- "{TASK TITLE}"
{SUB-50-WORD SUMMARY OF WHAT HAPPENED IN THE GIVEN RANGE}
=> {TASK URL}
```
