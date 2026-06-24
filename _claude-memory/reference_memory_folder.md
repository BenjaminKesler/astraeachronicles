---
name: reference-memory-folder
description: Memory folder is a Windows symlink — _claude-memory at the Astraea Chronicles root is the real folder; Claude memory path symlinks there via git-root-derived slug
metadata: 
  node_type: memory
  type: reference
  originSessionId: 825d99df-6dc8-444c-b609-03f5cfd86ada
---

The Claude memory path is `C:\Users\benlk\.claude\projects\C--Users-benlk-My-Drive--blkesler-gmail-com--Astraea-Chronicles\memory\`, which is a Windows symlink pointing to `C:\Users\benlk\My Drive (blkesler@gmail.com)\Astraea Chronicles\_claude-memory\`.

**Slug is derived from the git root, not the working directory.** The git root for this project is `Astraea Chronicles` (the parent of `Vault/`), producing the slug `C--Users-benlk-My-Drive--blkesler-gmail-com--Astraea-Chronicles`. The harness injects this path into the system prompt regardless of which subdirectory Claude Code is opened from within the repo.

**Why:** So that git captures memory files in commits alongside vault content. `_claude-memory` lives at the repo root (not inside `Vault/`) so it stays accessible regardless of how the vault subfolder structure evolves.

**How to apply:** When editing or deleting memory files, work in `_claude-memory\` directly or use the Claude memory path above — both resolve to the same files. A second symlink exists at `C--Users-benlk-My-Drive--blkesler-gmail-com--Astraea-Chronicles-vault\memory\` from an earlier session; it also resolves correctly but is not the canonical path.
