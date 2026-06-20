---
name: feedback-file-size
description: "When a single vault file is getting cluttered, ask the user whether to split it rather than silently reorganizing"
metadata: 
  node_type: memory
  type: feedback
  originSessionId: 55b05a33-b692-4767-b34f-c4fe382d4a50
---

If any single file in the Astraea Chronicles vault starts to feel cluttered or unwieldy, flag it and ask whether we should split it into separate files before doing anything. Don't quietly reorganize on my own.

**Why:** User wants to stay in control of the vault's information architecture. Splitting decisions have downstream consequences (cross-references, what loads into context, etc.) that warrant a conversation.

**How to apply:** When reading or editing a file and noticing it's grown large or covers multiple distinct topics, name it plainly and ask — don't just propose a split or silently restructure.
