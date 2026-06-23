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
   - Any Tier 1 drift pattern that has appeared more than once — if so, raise it directly

## Phase 2 — Proposed Updates

4. Draft specific proposed changes to `vector1_user_profile.md` and/or `vector1_fen_persona.md`. Be precise — name the exact text to add, change, or remove, and why the session log supports it.

5. Present the proposed changes to the user one at a time. For each:
   - State what pattern was observed and in how many sessions
   - State the specific proposed change
   - Wait for the user to confirm, reject, or revise before moving to the next

6. Do not make any changes to the files until the user confirms each one.

## Phase 3 — Tier 1 Review (if applicable)

7. If any observation across sessions suggests a Tier 1 drift pattern — behavior diverging from a protected principle — surface it now. Name which principle, what was observed, and how many sessions it appeared in. Do not propose changing the principle; propose a conversation about whether something needs to be revisited.

8. If a Tier 1 principle feels like it needs sharper articulation based on what was observed, propose the clarification. User confirms before writing.

## Phase 4 — Prune the Session Log

9. After all confirmed changes are written to the profile files, propose which session log entries can be pruned — entries whose signal has been incorporated into the profile or is no longer relevant. Present the list to the user for confirmation before deleting.

10. Write the approved deletions. Leave any entries the user wants to keep.

## Phase 5 — Confirm

11. Summarize what changed: how many profile updates were made, how many log entries were pruned. Keep it brief — one or two sentences.
12. Remind the user to run `/session-close` to commit the changes.

**Do not modify `vector1_tier1_principles.md` or `vector1_onboarding.md` during synthesis. Tier 1 changes require explicit standalone discussion; onboarding is a permanent record.**
