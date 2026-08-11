---
name: report-initial-tokens
description: Report the first Pi request's exact usage and current prompt/tool contributors.
disable-model-invocation: true
---

# Report Initial Tokens

Use the bundled helper. It reads Pi's recorded provider usage and can dry-probe the current configuration without sending an API request.

## Run

```bash
<skill-directory>/bin/report-initial-tokens --probe --pretty
```

If `$PI_SESSION_FILE` is unavailable, pass a session JSONL path as the final argument.

## Report

Distinguish these two scopes:

- `initial`: exact provider-recorded usage for the session's first assistant request.
- `probe`: a new-session payload built from the current files and extensions. It is structural evidence, not a historical reconstruction.

Include:

1. exact uncached input, cache reads/writes, output, reasoning, total, cost, context window, and percentages from `initial`
2. the next provider call's cache-hit percentage when present
3. visible skill count, instruction bytes, active/provider tool counts, tool bytes grouped by source, and largest tools from `probe`
4. every `context_file_drift` entry changed after the initial request
5. ranked reductions based on the largest contributors

State plainly that OpenAI/Pi stores only aggregate input usage. Never present bytes, local tokenizer counts, or ablation deltas as an exact provider token allocation by component.

If `probe.error` is present, report the exact initial usage anyway and explain that contributor inspection failed.
