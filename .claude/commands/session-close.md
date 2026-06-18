Run a session close-out for the Astraea Chronicles vault.

1. Run `git status` and `git diff HEAD` to identify all changes made this session.
2. Summarize what changed in plain language: which files were modified and the substance of each change. One short paragraph suitable for use as a commit message.
3. Present the summary to the user and ask for explicit approval before proceeding. The user may approve as-is or give you a revised message to use instead.
4. On approval: run `git add -A`, commit using the approved message, then `git push`.
5. Confirm the commit and push succeeded and tell the user they are ready to `/clear`.

Do not run git add or git commit until the user explicitly approves.
