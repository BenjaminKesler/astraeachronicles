# Domain Structure — the vault's filing bands
# purpose: WHAT kind of content lives WHERE; the DOMAIN axis of the storage system
# pairs with: [[_vault_architecture]] (owns the tier axis + retrieval rules)
# derived from: [[snowflake_methodology]] — the bands ARE the methodology's steps made physical
# status: outer-band reorg applied 2026-06-26 (Layer B — band folders created, files relocated); inner subdivision (Premise/Series-Arc subfolders; Novels per-book) still deferred to the methodology revalidation

PRINCIPLE
  domain boundary = COHESION: what is used together / changes together lives together
  domains derive from the methodology's steps, NOT from ingestion order
  each band carries its own T0–T3 tier split (orthogonal) → [[_vault_architecture]]

---

THE BANDS
  KNOWLEDGE — reusable, not this-series; portable how-to-write
    craft theory, methodology, publishing   → Knowledge/Novel Craft Theory/, Knowledge/snowflake_methodology, Knowledge/Publishing/
  SERIES CANON — Phase-1 Development Loop steps; global, iterative
    Premise · Characters (→ Characters/) · Series Arc · World (→ Encyclopedia/)    (GAP: Premise + Series Arc have no subfolder home yet — deferred to revalidation)
  NOVELS — Phase-2 Execution; per-novel, staggered
    one folder per book: Novel Anchors · Short Outline · Long Outline · Scene Cards · Draft    (Novels/ scaffolded; unbuilt — per-book folders at Phase-2 entry)
  META / OPERATIONAL — the collaboration's machinery (= the vault root; no Meta/ folder)
    CLAUDE.md, [[_vault_architecture]], domain_structure (this file), _instructions, Vector 1, .claude commands, 01_open_items, 02_craft_sparks

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

LAYOUT PROCEDURE  (the compiled how-to of the COHESION principle; the single canonical home — folder _instructions point here)
  ADD     to an existing file when new material belongs to a topic it already covers
  NEW     file when material introduces a distinct topic no existing file serves
  SPLIT   when a file grows cluttered or carries multiple topics at equal weight
  MERGE   when significant overlap develops between files
  SUBFOLDER  when a topic cluster grows large enough to warrant grouping
  REORGANIZE proactively — layout should reflect the CURRENT shape of the content, not the order it arrived

FOLDER _INSTRUCTIONS — TEMPLATE CONVENTION  (light convention, not a shared file)
  a folder's _instructions follow: PURPOSE · WHAT-TO-SAVE · CONSTRUCTION + a LAYOUT pointer (→ LAYOUT PROCEDURE above)
  purpose / what-to-save / construction are folder-specific; layout is shared, so it POINTS here rather than restating
