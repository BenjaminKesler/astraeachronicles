# Execution Plan — WORKING / TEMPORARY

> **Status:** transition artifact for the guidance-reorg execution phase. Not canon. Delete or archive once Layer A lands (wave 5).
> **Source of decisions:** `_guidance_inventory.md` (D1–D15). This file holds the *sequencing + status*; the inventory holds the *rulings*. When they touch the same unit, the inventory is authoritative on *what*, this file on *when*.
> **Scope:** **Layer A only** — content rewrites, in place. No folder moves. The physical band restructure is **Layer B**, deferred (see manifest at bottom).
> **Checkbox legend:** `[ ]` not started · `[~]` in progress · `[x]` done.

---

## Governing guardrail (applies to every wave)

> **Wire by name-based wikilink, not hardcoded folder path,** for all vault-internal references. Then Layer B's relocations don't break a single pointer.
> *Exception:* the `.claude/commands` skills are location-pinned and reference the memory folder by path regardless — leave those as paths.

---

## Wave 1 — Foundation  *(rename + Mutability; ripples widest, do first)*

- [ ] Memory folder: rename `vector1_tier1_principles.md` → `vector1_protected_principles.md`
- [ ] In that file: swap internal "Tier 1" protection-sense language → "Protected" (header already reads "Protected Collaboration Principles")
- [ ] Update `MEMORY.md` index line (name + link)
- [ ] Update every reference to the old name/term:
  - [ ] CLAUDE.md Vector 1 loading line (CM-04)
  - [ ] session-close skill ("Tier 1 drift" → "Protected-principle …")
  - [ ] vector1-synthesis skill (VS-02 "do not modify tier1_principles")
- [ ] Formalize the Mutability axis (Permanent · Protected · Refinable · Ephemeral) + one-line note in VA-01 (`_vault_architecture`) that a 3rd coordinate exists — sparse/optional, not retrofitted everywhere
  - **OPEN (resolve at wave head):** where Mutability gets tagged — per-file header tag vs. one central note

---

## Wave 2 — Canonical homes settle

- [ ] Split each identity file → lean T0 **core** + `_ref` **tail** (per D3: levers stay in core; rationale / examples / contrast table / sample jokes / per-principle "why" → tail):
  - [ ] `vector1_user_profile.md` + `vector1_user_profile_ref.md`
  - [ ] `vector1_fen_persona.md` + `vector1_fen_persona_ref.md`
  - [ ] `vector1_protected_principles.md` + `vector1_protected_principles_ref.md`
- [ ] Absorptions:
  - [ ] VF-01 ← CM-03 active job-desc ("stress-test, flag contradictions, name plainly / don't quietly resolve")
  - [ ] VF-04 ← CM-12 (proactive process flagging) + CM-13 (file-edit notice) + canonical dialogue behaviors
  - [ ] VU-02 → trim to the user-needs half; cross-ref VF-04
  - [ ] VT-05 ← CM-10's "internal lie" phrasing; relocate VT-05 → **T1** — must sit **physically outside the auto-loaded core** (in the tail / a story-grounding spot), not just be labeled, so it doesn't load at session start
- [ ] OS spec:
  - [ ] VA-04 absorbs the AU-01 reliance-gate spec
  - [ ] DS-04 prune (ephemeral status note)
  - [ ] author the canonical layout procedure into `domain_structure` (compiled how-to of DS-01 cohesion)
  - [ ] **record the D15 light-template convention** alongside it: folder `_instructions` = purpose · what-to-save · construction + a layout pointer (so future folders stay consistent — applied to NI/PI, but written down here for the next folder)
  - **OPEN (resolve at wave head):** physical home of the D2 T0 reliance-gate slogan (which hot-loaded file)

---

## Wave 3 — Wiring  *(points at the wave-2 homes; obey the name-link guardrail)*

- [ ] CLAUDE.md collaboration section:
  - [ ] collapse → one consolidated principles-pointer + one explicit Soul line (VT-04)
  - [ ] drop CM-03, CM-06, CM-07, CM-08, CM-09, CM-10, CM-12
  - [ ] load ritual (CM-04) → "load the 3 cores; tails gated by the reliance gate"
  - [ ] CM-14 → T0 north-star authority-pointer; CM-11 stays (T1 milestone)
  - [ ] remove CM-13 (now in persona); keep CM-01, CM-05
- [ ] Commands:
  - [ ] IC-01 — de-hardcode `/tmp` → session scratchpad
  - [ ] IC-02 → pointer to VF-04
  - [ ] IC-03 → pointer to NI-02 (keep command-specific process: save mode, destination, source line)
  - [ ] SC-01 → reliance-gate pointer to the routing rule + reference VT-02 detection (not restated)
  - [ ] VS-01 → **hosts** the core/tail routing rule (D12, *which tier within a file*) **+ the D4 filing rule** (*which file* — Facts→profile · Principles→protected · Behaviors→persona · CLAUDE.md/commands→pointers) + reference VT-01 governance
  - [ ] VS-02 → pointer to VT-01 + 1-line Mutability rule (Refinable w/ confirm · Protected tail-only · never Permanent); keep onboarding-permanent specific
- [ ] Folder `_instructions`: NI-04 / PI-04 trim restatements → layout pointer to the `domain_structure` procedure

---

## Wave 4 — Navigation

- [ ] One-line self-describing headers on files (Option B)
  - **OPEN (resolve at wave head):** scope — every file vs. only files whose names aren't self-evident
- [ ] **Preserve the conditional load-rules** currently braided into CLAUDE.md's file-index prose — relocate into the distributed headers / folder-docs, do NOT drop them in the rebuild:
  - *"load `enneagram_approach.md` before any Enneagram character analysis"*
  - *"before modifying any file in this folder, read `…/_instructions.md`"* (both folders)
  - *"load the relevant beat file when working on that beat"*
  - *"skeleton only until craft video revalidation is complete"* (Methodology)
- [ ] Folder-docs (NI-01 / PI-01 purpose lines double as these; other folders get a folder-note as needed)
- [ ] Navigation guidance note (drafted in D14) → CLAUDE.md, with the T0 skeleton
- [ ] Rebuild the file-index **T0 skeleton** against **current folders** (interim — Layer B re-maps to bands); fixes the drift: `_process.md` is gone, beats now run 01–14 (incl. 10b)

---

## Wave 5 — Cleanup

- [ ] Final consistency sweep (every dropped unit gone; every pointer resolves; no orphaned references)
- [ ] Retire `_guidance_inventory.md` and this `_execution_plan.md` (archive or delete)
- [ ] Session-close commit

---

# Layer B — Deferral Manifest  *(what Layer A intentionally leaves undone)*

> **Why deferred:** Layer B = the physical band restructure. It brushes the frozen-methodology seam (the *inner*-band subdivision) and is a big enough move to deserve its own planning pass. Outer bands are decided (DS-02); inner subdivision stays frozen until the methodology revalidation (SM-04 trigger: after the Abbie beat queue clears).

**Deferred operations:**
1. Create the four band folders — Knowledge / Series Canon / Novels (empty, unbuilt) / Meta.
2. Author the current-folder → band mapping (a Layer B task, *not* predetermined). Known anchors: Novel Craft Theory + Methodology → Knowledge; Characters (hub-spoke, DS-03) + Encyclopedia + north_star → Series Canon; root meta files → Meta.
3. Physically move content into bands; verify wikilinks survive the move (name-based → cheap, but verify).
4. **CM-02** (episodic structure) physical relocation → Series Canon, loose-file + manifest. *(Parked in CLAUDE.md during Layer A, tagged.)*
5. Rebuild the file-index T0 skeleton from current-folders → band-regions. *(Layer A's skeleton is interim.)*
6. Within each band, loose-file the frozen-inner content + manifest — no Premise / Series-Arc / Novel-Anchors subfolders until the methodology unfreezes.

**Open questions to resolve at Layer B:**
- Publishing's band (Knowledge vs. Meta?)
- north_star's band (D7 leans Series Canon T1 content + a T0 authority-pointer)
- the inner-band loose-file + manifest format

**Layer A interim seams (placeholders Layer B revisits):**
- the file-index skeleton (built against current folders)
- CM-02 still living in CLAUDE.md

**Deferred boundary — auto-memory files (a conscious call, not a hole):** the 4 memory-system files never scoped by the guidance inventory — `feedback_file_size`, `feedback_theory_over_worksheets`, `project_authorial_worldview`, `reference_memory_folder` — are held **out of Layer A by design** (they live in the Claude memory system, not the vault). Two overlap our guidance: `feedback_file_size` brushes the layout/split rules; `project_authorial_worldview` is series grounding. Revisit whether they should reconcile with the vault guidance layer — but as a separate decision, not folded into the band restructure.

**Cross-links:**
- the Series Canon tiering pass (Forward work in the inventory — content T-levels; complements the physical move)
- the methodology revalidation (unfreezes the inner bands)
