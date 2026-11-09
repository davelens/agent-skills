# TODO

## Plan loop extension (pi-config)

Automate the manual loop after `/skill:kickoff`: `/skill:next-slice` → `/goal docs/briefs/<slice>-goal.md` in a fresh session → commit →
repeat until the plan's `Next:` line reads `none`.

- A new extension in `pi-config/extensions/` (e.g. `/plan-loop [plan]`), built on `loop-with-goal`'s goal state and `goal_control`.
- Each slice gets a new session, so context never carries over between slices; the brief and the plan are the only hand-off.
- Per iteration: run next-slice's brief writing, start the goal, wait for `goal_control` `done`, commit the slice (or pause for the user's
  commit), re-read `Next:`.
- Stop on `blocked`, on a question next-slice must ask the user (slicing that changes a milestone, dropping source behaviour, a guarded
  system), on a failed full check, or when `Next:` is `none`; notify (desktop/phone) on every stop.
- Avoid the old gauntlet loop's failure: one bounded slice per goal, never one goal for the whole plan.
