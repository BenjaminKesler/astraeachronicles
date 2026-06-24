---
name: reference-memory-folder
description: "Memory folder is a Windows symlink — _claude-memory in the vault is the real folder; edit there, not the Claude path"
metadata:
  type: reference
---

The Claude memory path (`C:\Users\benlk\.claude\projects\C--Users-benlk-My-Drive--blkesler-gmail-com--Astraea-Chronicles\memory\`) is a Windows symlink pointing to `_claude-memory\` inside the vault.

**Why:** So that git captures memory files in commits alongside the vault content.

**How to apply:** When editing or deleting memory files, work in the vault's `_claude-memory\` folder directly — both paths resolve to the same files, so either works, but `_claude-memory` is the canonical location. Don't treat them as two separate copies that need to be kept in sync.
