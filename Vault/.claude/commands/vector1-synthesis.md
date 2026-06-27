Run a Vector 1 synthesis pass — review accumulated session observations and update the user profile and Fen persona based on confirmed patterns.

Run this skill every 5-10 sessions, or whenever the session log feels dense enough to synthesize. Takes 10-15 minutes. All proposed changes require user confirmation before being written.

## Phase 1 — Review the Session Log

1. Read `vector1_session_log.md` in full.
2. Read the current `vector1_user_profile.md` and `vector1_fen_persona.md` to have the baseline in mind.
3. Look across the session log entries for:
   - Patterns that appear across multiple sessions (not one-session data points)
   - Observations that confirm or complicate existing profile claims
   - Observations that are genuinely new — not yet captured anywhere in the profile
   - Entries that are now stale or confirmed and can be pruned from the log
   - Any Protected-principle drift pattern that has appeared more than once — if so, raise it directly

## Phase 2 — Proposed Updates

4. Draft specific proposed changes to `vector1_user_profile.md` and/or `vector1_fen_persona.md`. Be precise — name the exact text to add, change, or remove, and why the session log supports it.

**Routing each change** — where it lands:
- *Which file (the filing rule):* facts about the user → `vector1_user_profile`; Fen's behaviors → `vector1_fen_persona`; collaboration principles → `vector1_protected_principles` (Protected — see the Mutability guardrail at the end). CLAUDE.md and the commands only *point*; never restate canonical content into them.
- *Which tier within the file (core vs. tail):* default to the `_ref` **tail**; promote to the **core** only when the change is a new calibration *lever* — something Fen must hold active every session. Rationale, examples, and nuance stay in the tail. Each run, also re-sort: promote a tail item that has hardened into a lever, demote an inert core item.
- The core is compressed and paid every session — it's earned, not the default.

5. Present the proposed changes to the user one at a time. For each:
   - State what pattern was observed and in how many sessions
   - State the specific proposed change
   - Wait for the user to confirm, reject, or revise before moving to the next

6. Do not make any changes to the files until the user confirms each one.

## Phase 3 — Protected-Principle Review (if applicable)

7. If any observation across sessions suggests a Protected-principle drift pattern — behavior diverging from a protected principle — surface it now. Name which principle, what was observed, and how many sessions it appeared in. Do not propose changing the principle; propose a conversation about whether something needs to be revisited.

8. If a Protected principle feels like it needs sharper articulation based on what was observed, propose the clarification. User confirms before writing.

## Phase 4 — Prune the Session Log

9. After all confirmed changes are written to the profile files, propose which session log entries can be pruned — entries whose signal has been incorporated into the profile or is no longer relevant. Present the list to the user for confirmation before deleting.

10. Write the approved deletions. Leave any entries the user wants to keep.

## Phase 5 — Confirm

11. Summarize what changed: how many profile updates were made, how many log entries were pruned. Keep it brief — one or two sentences.
12. Remind the user to run `/session-close` to commit the changes.

**Synthesis obeys the Mutability axis** (defined in `_vault_architecture.md`):
- **Refinable** (`vector1_user_profile`, `vector1_fen_persona` + their `_ref` tails) — update with user confirmation; this is synthesis's normal target.
- **Protected** (`vector1_protected_principles`) — do **not** rewrite the principle statements here. Synthesis may only *flag* a divergence or *propose* a sharper articulation for **explicit standalone discussion** (per the refinement governance in the principles tail). Never weaken or silently adjust.
- **Permanent** (`vector1_onboarding`) — never modified; it's the seed baseline.

When in doubt, propose a conversation, not an edit.
