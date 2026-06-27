Run a session close-out for the Astraea Chronicles vault.

## Phase 1 — Vector 1 Observation Capture

Before touching git, review the session for meaningful observations about the collaboration dynamic.

1. With `vector1_user_profile.md` and `vector1_fen_persona.md` in mind, review the session and identify 2-4 observations worth capturing. Look for:
   - What the session actually became vs. the stated agenda — gaps are informative
   - Topics or moments that generated clear energy vs. felt dutiful or avoided
   - Whether any known blindspot patterns appeared (ego-attachment to a conflicting idea, steering away from craft theory, perfectionism pressure rising)
   - Whether a breakthrough happened and what specifically triggered it
   - Whether the rabbit hole tracking worked or broke down
   - Whether the feedback approach (positive before critique, heard before corrected) landed or missed
   - Anything new about the user's cognitive style or working patterns not yet captured in the profile

2. Append the observations to `vector1_session_log.md` in the memory folder using this format:
   ```
   ## [YYYY-MM-DD] — [Session focus in a few words]
   - [Observation]
   - [Observation]
   ```

3. If any observation clearly warrants updating the user profile now (confirmed pattern, not a one-session data point), propose the specific change to the user and wait for confirmation before making it. When you do, route it per the core/tail rule in the `vector1-synthesis` command (fetch that rule when you actually have an update to place): a new calibration *lever* goes to the core, rationale/nuance to the `_ref` tail.

4. If a Protected-principle drift pattern is suspected, flag it briefly per the drift-detection protocol in `vector1_protected_principles.md`: *"I noticed [X] across this session — worth keeping an eye on."* Don't flag single instances; flag patterns.

Keep this phase light. 2-4 observations max. Quality over quantity. The `vector1-synthesis` skill handles pattern analysis across sessions — this step only captures raw signal.

## Phase 2 — Git Commit

5. Run `git status` and `git diff HEAD` to identify all changes made this session.
6. Draft a short commit message (under 10 words) that identifies the session's main focus — not a full summary or audit trail.
7. Present the summary to the user and ask for explicit approval before proceeding. The user may approve as-is or give a revised message to use instead.
8. On approval: run `.claude/scripts/git-session-commit.ps1 -Message '<approved message>'` from the vault root. The script stages all changes, commits, and pushes.
9. Confirm the output shows success and tell the user they are ready to `/clear`.

Do not run git add or git commit until the user explicitly approves.
