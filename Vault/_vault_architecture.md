# Vault Architecture — knowledge-management operating system
# purpose: how to decide WHERE anything is stored and WHEN it loads; the meta-layer for the whole vault
# pairs with: [[domain_structure]] (the domain axis) — this file owns the TIER axis + retrieval rules
# status: captured 2026-06-25; front half of the pending methodology revalidation

CONVENTIONS
  every file has two independent coordinates: DOMAIN (what kind) × TIER (when it loads)
  the axes are orthogonal — content growth grows the matrix's cells, never the tier count
  → [[domain_structure]] for the DOMAIN axis

---

THE FOUR TIERS  (by load trigger)
  T0 ORIENTATION — trigger: session start (always). north star, Vector 1, the indexes/maps.
    must be loaded to know what EXISTS before anything can be fetched on demand.
  T1 DOMAIN GROUNDING — trigger: entering a domain. compact frames only (beat skeleton, arc model,
    enneagram approach, world core). the always-on LENS that makes pointers recognizable.
  T2 ITEM DETAIL — trigger: touching a specific item. individual beat, type bible, world entry, novel outline.
  T3 COLD — trigger: maintenance / re-validation only. _instructions, methodology internals, provenance.
  PROLIFERATION GUARD: if you want a 5th tier you are adding a DOMAIN, not a tier. resist.

NON-UNIFORM COMPRESSION  (compression pressure tracks load frequency)
  T0/T1 compress HARDEST — paid every load; and they are frames, so low fidelity-loss risk (lean is the job)
  T2 may BREATHE — paid rarely; needs full value at point of use; over-compaction risk lives HERE
  one rule does not fit all files — compress to the tier, not to a global line

---

RETRIEVAL — POINTER RULES
  DIRECTION: content → knowledge, NEVER back. keeps Knowledge portable; back-pointers couple it to this series and rot.
  PLACEMENT: pointer sits at point-of-use, in matched canonical vocabulary. names are the retrieval KEYS
    (e.g. "Tragedy" / "Stripping" → [[arc-architecture]]); vocabulary drift is what breaks cross-domain recall.
  MECHANISM: reliably-triggered, NOT automatic. the T1 grounding lens makes a pointer worth following;
    a miss is recoverable (fetch on realizing the need). design for cheap-and-obvious, not zero-judgment.

SINGLE SOURCE OF TRUTH + REFERENCE
  a cross-cutting concept gets ONE canonical home; every application site POINTS, never restates.
  worked example: [[arc-architecture]] — the model stored once, the beat files reference it.

PROVENANCE / SHARED METADATA  (T3 discipline)
  source tags / authority lists are COLD — keep for re-validation but demote out of the hot region (footer or manifest)
  do not restate standing metadata per file; hoist shared metadata once to the domain's grounding file
