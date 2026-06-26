# Domain Structure — the vault's filing bands
# purpose: WHAT kind of content lives WHERE; the DOMAIN axis of the storage system
# pairs with: [[_vault_architecture]] (owns the tier axis + retrieval rules)
# derived from: [[snowflake_methodology]] — the bands ARE the methodology's steps made physical
# status: captured 2026-06-25; current layout is happenstance; file-moves deferred to a dedicated reorg pass

PRINCIPLE
  domain boundary = COHESION: what is used together / changes together lives together
  domains derive from the methodology's steps, NOT from ingestion order
  each band carries its own T0–T3 tier split (orthogonal) → [[_vault_architecture]]

---

THE BANDS
  KNOWLEDGE — reusable, not this-series; portable how-to-write
    craft theory, methodology, publishing   → Novel Craft Theory/, Methodology/, Publishing/
  SERIES CANON — Phase-1 Development Loop steps; global, iterative
    Premise · Characters · Series Arc · World    (current GAP: no Premise or Series Arc home yet)
  NOVELS — Phase-2 Execution; per-novel, staggered
    one folder per book: Novel Anchors · Short Outline · Long Outline · Scene Cards · Draft    (does not exist yet)
  META / OPERATIONAL — the collaboration's machinery
    CLAUDE.md, [[_vault_architecture]], _instructions, indexes, Vector 1, .claude commands, 01_open_items

---

CHARACTERS — JOIN ENTITY  (not a domain; the seam where the bands meet)
  THREE FACES:
    KNOWLEDGE face — instantiated from type / wound / [[arc-architecture]] → pointers OUT to Knowledge
    SERIES face   — the persistent core identity; holds across every book
    NOVEL face    — per-book arc entry/exit state; each novel writes the new state back
  FILING — hub & spoke (single-source + reference applied to people):
    HUB   = stable core, one file per character in Series Canon; Knowledge bindings as pointers; indexes the spokes
    SPOKES = per-novel arc state, inside each novel's Novel Anchors
    never mix the stable core with volatile per-novel state
  mirrors the methodology: Characters step = core; Novel Anchors = per-novel state

---

STATUS / DEFERRED
  this is the front half of the pending [[snowflake_methodology]] revalidation (trigger now met — Abbie queue cleared)
  happenstance today: everything clusters in KNOWLEDGE + a thin slice of SERIES CANON; NOVELS band unbuilt
  deferred to a dedicated pass: creating the band folders, relocating existing files, full methodology revalidation
