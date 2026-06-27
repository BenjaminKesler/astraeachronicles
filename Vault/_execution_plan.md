# Execution Plan — WORKING / TEMPORARY

> **Status:** transition artifact for the guidance-reorg execution phase. Not canon. **Retire at the methodology-revalidation milestone (M2)** — trigger: Abbie ingestion queue clears → SM-04 unfreeze. The inner-band restructure is the *last consumer* of this file's content (the Deferral Manifest). Do NOT retire at Layer A *or* Layer B close.
> **Source of decisions:** `_guidance_inventory.md` (D1–D15). This file holds the *sequencing + status*; the inventory holds the *rulings*. When they touch the same unit, the inventory is authoritative on *what*, this file on *when*.
> **Scope:** **Layer A only** — content rewrites, in place. No folder moves. The physical band restructure is **Layer B**, deferred (see manifest at bottom).
> **Checkbox legend:** `[ ]` not started · `[~]` in progress · `[x]` done.

---

## Governing guardrail (applies to every wave)

> **Wire by name-based wikilink, not hardcoded folder path,** for all vault-internal references. Then Layer B's relocations don't break a single pointer.
> *Exception:* the `.claude/commands` skills are location-pinned and reference the memory folder by path regardless — leave those as paths.

---

## Wave 1 — Foundation  *(rename + Mutability; ripples widest, do first)*

- [x] Memory folder: rename `vector1_tier1_principles.md` → `vector1_protected_principles.md` *(via git mv — history preserved)*
- [x] In that file: swap internal "Tier 1" protection-sense language → "Protected" (header now "Protected Collaboration Principles"; `name:` slug + 5× "Why it's Protected"); added Mutability-class header note
- [x] Update `MEMORY.md` index line (name + link)
- [x] Update every reference to the old name/term:
  - [x] CLAUDE.md Vector 1 loading line (CM-04 — filename only; 3-core rewrite deferred to wave 3)
  - [x] session-close skill ("Tier 1 drift" → "Protected-principle …")
  - [x] vector1-synthesis skill (5× term swaps + filename; VS-02 structural rewrite deferred to wave 3)
- [x] Formalize the Mutability axis — **RESOLVED: per-file frontmatter tag (`metadata.mutability`); axis *definition* single-sourced in VA-01.** Note added to VA-01; tags applied: protected_principles=Protected · onboarding=Permanent · user_profile=Refinable · fen_persona=Refinable · session_log=Ephemeral

**✅ WAVE 1 COMPLETE.** Verified: no live pointer to the old filename remains (only historical records in this plan, the inventory, and the session log). Two items intentionally left minimal for wave 3's structural rewrites: the CLAUDE.md load line (→ "3 cores") and VS-02 (→ Mutability rule).

---

## Wave 2 — Canonical homes settle

- [x] Split each identity file → lean T0 **core** + `_ref` **tail** (per D3: levers stay in core; rationale / examples / contrast table / sample jokes / per-principle "why" → tail):
  - [x] `vector1_user_profile.md` + `vector1_user_profile_ref.md` *(demoted: 1/3/4 char IDs, "most alive," IT-job background, worked examples; pointer added)*
  - [x] `vector1_fen_persona.md` + `vector1_fen_persona_ref.md` *(demoted: 3 sample jokes, contrast table; pointers added)*
  - [x] `vector1_protected_principles.md` + `vector1_protected_principles_ref.md` *(demoted: refinement governance + 5× "Why it's Protected"; core split into T0-universal + T1-domain sections)*
  - [x] 3 new `_ref` files: memory frontmatter + matching mutability + MEMORY.md on-demand index entries
- [x] Absorptions:
  - [x] VF-01 ← CM-03 active job-desc ("The working job: stress-test, flag contradictions, name plainly / don't quietly resolve")
  - [x] VF-04 ← CM-12 (proactive process flagging) + CM-13 (file-edit notice)
  - [x] VU-02 → kept canonical user-needs; added cross-ref to VF-04 (no heavy trim needed — already need-framed)
  - [x] VT-05 ← CM-10's "internal lie" phrasing; **staged** → moved to a marked "T1 — Domain-Scoped" section physically separate from the T0 core. *True evacuation (so it doesn't auto-load) deferred to the Series Canon tiering pass, when a story-grounding home exists. Noted in-file.*
- [x] OS spec:
  - [x] VA-04 absorbs the AU-01 reliance-gate spec (RELIANCE GATE block added to the RETRIEVAL section; notes the T0 slogan ships from CLAUDE.md)
  - [~] ~~DS-04 prune~~ — **RE-FILED to Layer B.** Its own condition is "delete once the reorg lands"; the reorg is Layer B (still deferred), and the STATUS/DEFERRED block is currently *true*. Pruning now would erase live deferral info. Moved to the Layer B manifest.
  - [x] authored the canonical LAYOUT PROCEDURE into `domain_structure` (single home; folder `_instructions` point here)
  - [x] recorded the D15 light-template convention alongside it (FOLDER _INSTRUCTIONS — TEMPLATE CONVENTION block)
  - **RESOLVED:** D2 T0 slogan home = **CLAUDE.md**, co-located with the nav section; *deployed in wave 4* (it's a T0 orientation instrument, not Vector-1 material). VA-04 holds the spec; the slogan ships later.

**✅ WAVE 2 COMPLETE.** Identity files now lean T0 cores + on-demand `_ref` tails; absorptions folded; OS spec carries the reliance-gate spec + the layout procedure + template convention. Two deferrals logged: DS-04 prune → Layer B; VT-05 true-evacuation → Series Canon tiering pass. *Memory-file `[[ ]]` links use name-slugs (hyphens), per the memory-system convention — distinct from Obsidian basename links in the vault.*

---

## Wave 3 — Wiring  *(points at the wave-2 homes; obey the name-link guardrail)*

- [x] CLAUDE.md collaboration section:
  - [x] collapse → one consolidated principles-pointer + one explicit Soul line (VT-04) + "Your role" para collapsed to a pointer
  - [x] drop CM-03, CM-06, CM-07, CM-08, CM-09, CM-10, CM-12
  - [x] load ritual (CM-04) → "load the 3 cores; tails gated by the reliance gate"
  - [x] CM-14 — left as-is: it already reads as the T0 north-star authority-pointer D7 calls for; CM-11 stays (T1 milestone)
  - [x] remove CM-13 (now in persona); keep CM-01, CM-05
- [x] Commands:
  - [x] IC-01 — de-hardcode `/tmp` → `$SCRATCH` session scratchpad (with a note: shell state doesn't persist, substitute inline)
  - [x] IC-02 → Step 3 points to the Vector 1 persona for general conduct; keeps command-specific framing
  - [x] IC-03 → Step 5 points to NI-02 as the single source; KEEP/DISCARD restatement removed; destination/source-line process kept
  - [x] SC-01 → item 3 points to the core/tail routing rule (fetch-on-use); item 4 references the drift-detection protocol
  - [x] VS-01 → Phase 2 now **hosts** the core/tail routing rule + the D4 filing rule
  - [x] VS-02 → guardrail rewritten as "synthesis obeys the Mutability axis" (Refinable w/ confirm · Protected statements untouched/clarify-only · Permanent never)
- [x] Folder `_instructions`: NI-04 / PI-04 restatements replaced with a `[[domain_structure]]` LAYOUT PROCEDURE pointer

**✅ WAVE 3 COMPLETE.** CLAUDE.md's front door is now pointers + the Soul keystone; the commands point at the canonical homes instead of restating; the Vector-1-maintenance machinery (routing rule + Mutability guardrail) is hosted in synthesis; folder layout rules single-sourced to `domain_structure`.

---

## Wave 4 — Navigation

- [x] ~~One-line self-describing headers on files~~ — **D14 AMENDED (no in-file headers).** A header can't be read without opening the file, so it can't do a folder-doc's survey-from-outside job; its only gain is marginal and it adds a stale-cache liability. The honest Option B: **the filename IS the file-level index** (zero-cache, always true). Folder-docs cover folders; names cover files. *Name audit run against the current vault → every filename already sufficient; zero renames. Rename only if a future file's name is insufficient.*
- [x] **Preserved the conditional load-rules** — folded into the always-loaded map lines (stronger than a folder-doc, which only loads on entry): `enneagram_approach`-before-Enneagram + read-`_instructions`-before-modifying (Novel Craft Theory line), load-relevant-beat (Beats), frozen-until-revalidation (Methodology line).
- [x] Folder-docs — `_instructions` serve Novel Craft Theory + Publishing; Characters/Encyclopedia carry their description in the map line (no new folder-note files, per the sub-decision).
- [x] Navigation guidance note → CLAUDE.md (updated for the no-headers amendment: names index files; insufficient name = rename signal).
- [x] Rebuilt the file-index → **T0 skeleton / folder map** against current folders; per-file descriptions dropped; **D2 reliance slogan deployed**; drift fixed (`_process.md` gone, no more stale 01–04-only beat list).

**✅ WAVE 4 COMPLETE.** CLAUDE.md's index is now a lean folder map + navigation note + reliance slogan; files are indexed by name, folders by `_instructions`/map line; the per-file prose and the documented drift are both gone.

**✅ ALL SUBSTANTIVE WAVES (1–4) COMPLETE.** Remaining: Wave 5 — the consolidated audit (changes vs. inventory + plan), gap sanity-check, then the single Layer A commit.

---

## Wave 5 — Cleanup

- [ ] Final consistency sweep (every dropped unit gone; every pointer resolves; no orphaned references)
- [ ] Session-close commit (the single Layer A commit)
- [~] ~~Retire `_guidance_inventory.md` and this `_execution_plan.md`~~ — **DEFERRED past Layer B to the revalidation milestone (M2).** Both hold context that survives Layer B and is consumed by the inner-band restructure (the inventory's Forward-work + decision rationale; this file's Deferral Manifest). Retiring at M2 — not Layer B close — avoids a risky "rehome the forward-context then delete" step: the artifacts simply live in original form until their last reader. See the Layer B Execution Sequence → *Deferred to the revalidation milestone*.

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
7. **DS-04 prune** — delete the STATUS/DEFERRED block in `domain_structure` once the band folders exist and files are moved (its own condition: "delete once the reorg lands"). *Re-filed here from Wave 2 during execution — the note is still true until Layer B.*
8. **Retire the working artifacts** — archive/delete `_guidance_inventory.md` and `_execution_plan.md`. **Moved OUT of Layer B → the revalidation milestone (M2)** (user call): M2's inner-band restructure is the last consumer of their content, so they live untouched until then. No longer a Layer B op — see the Execution Sequence's revalidation bundle.

**Open questions to resolve at Layer B — ✅ ALL RESOLVED** (see the Layer B Execution Sequence below):
- ~~Publishing's band~~ → **Knowledge** (kind/change-trigger: reusable series-agnostic reference, maintained like Novel Craft Theory; *not* timing).
- ~~north_star's band~~ → **Series Canon** (band content anchor, T1; the supremacy *pointer* stays in CLAUDE.md's Meta T0 skeleton; hand-verify that pointer at move-time).
- ~~inner-band loose-file + manifest format~~ → a **Series Canon band-doc** with a central `## Deferred inner structure` ledger (a DS-04-class transient note, retired at M2; central not frontmatter — deferral bookkeeping isn't navigation, so D14 doesn't govern).
- *Plus resolved during sequencing:* **Meta = root** (no `Meta/` folder — CLAUDE.md + `.claude/` are harness-pinned to root); **`Images/Characters/` → Series Canon** (art supporting character/encyclopedia text).

**Layer A interim seams (placeholders Layer B revisits):**
- the file-index skeleton (built against current folders)
- CM-02 still living in CLAUDE.md

**Deferred boundary — auto-memory files (a conscious call, not a hole):** the 4 memory-system files never scoped by the guidance inventory — `feedback_file_size`, `feedback_theory_over_worksheets`, `project_authorial_worldview`, `reference_memory_folder` — are held **out of Layer A by design** (they live in the Claude memory system, not the vault). Two overlap our guidance: `feedback_file_size` brushes the layout/split rules; `project_authorial_worldview` is series grounding. Revisit whether they should reconcile with the vault guidance layer — but as a separate decision, not folded into the band restructure.

**Cross-links:**
- the Series Canon tiering pass (Forward work in the inventory — content T-levels; complements the physical move)
- the methodology revalidation (unfreezes the inner bands)

---

# Layer B — Execution Sequence  *(planned; not started)*

> Operationalizes the Deferral Manifest above into ordered waves. The manifest holds the *why*; this section holds the *how + when*. Same discipline as Layer A: decide the whole shape on paper, move nothing until a wave's gate is green. Obey the governing name-link guardrail throughout.

## Locked band map

| Current location | → Band | Handling |
|---|---|---|
| `Novel Craft Theory/` | Knowledge | intact `git mv` |
| `Publishing/` | Knowledge | intact `git mv` |
| `Methodology/snowflake_methodology` | Knowledge | folder **SPLITS** ↓ (relocation ≠ edit; the freeze is respected) |
| `Methodology/domain_structure` | Meta = root | OS spec — goes the *other* way; stays at root |
| `Characters/` | Series Canon | intact `git mv` (hub-spoke, DS-03) |
| `Encyclopedia/` | Series Canon | intact `git mv` |
| `Images/Characters/` | Series Canon | series art supporting character/encyclopedia text |
| `00_north_star` | Series Canon | band anchor (top of band); **HAND-VERIFY** the CLAUDE.md supremacy pointer |
| CM-02 episodic structure (in CLAUDE.md) | Series Canon | extract → loose file + ledger entry |
| `_vault_architecture`, `domain_structure`, `01_open_items`, `02_craft_sparks` | Meta = root | stay at root (Meta is the root band, not a folder) |
| `CLAUDE.md`, `.claude/` | Meta = root (pinned) | harness-pinned; never move |
| `_guidance_inventory`, `_execution_plan` | — | retire at M2 (see revalidation bundle) |

> **Meta = root** — no `Meta/` folder is created. CLAUDE.md + `.claude/` are harness-pinned to root, so root *is* the Meta band. Only **three** new folders get created (Knowledge / Series Canon / Novels).
> **`Methodology/` dissolves** — its two files split across bands; the empty folder is removed.

## Waves

### Wave B1 — Finalize the band map *(paper, no moves)*
- [ ] Lock the band map above; confirm no file is unassigned or double-assigned
- [ ] Snapshot current wikilinks as a baseline to diff against post-move
- **Gate:** complete, conflict-free map.

### Wave B2 — Scaffold the bands *(empty structure; no content moves)*
- [ ] Create `Knowledge/`, `Series Canon/`, `Novels/`
- [ ] Write the Series Canon band-doc with an empty `## Deferred inner structure` ledger (records the frozen Premise / Series-Arc / Novel-Anchors triad + the M2 unfreeze trigger)
- [ ] Novels stub note (band exists, unbuilt)
- **Gate:** empty scaffolding exists; Obsidian sees it.

### Wave B3 — Migrate *(the breakage-prone wave — verify aggressively)*
- [ ] `git mv` intact folders → bands (NCT, Publishing, snowflake → Knowledge; Characters, Encyclopedia, Images → Series Canon)
- [ ] north_star → top of Series Canon; **hand-verify the CLAUDE.md supremacy pointer resolves** (highest-stakes pointer in the vault)
- [ ] Extract CM-02 episodic structure from CLAUDE.md → loose file in Series Canon + ledger entry
- [ ] Verify wikilinks resolve after each batch (incl. memory-system `[[ ]]` slug links + `.claude` command refs)
- **Gate:** all content homed; every link resolves.

### Wave B4 — Re-map + prune
- [ ] Rebuild CLAUDE.md's folder-map skeleton → band-regions (manifest item 5)
- [ ] Prune DS-04's STATUS/DEFERRED block — its "once the reorg lands" condition is now met (manifest item 7)
- [ ] Update the navigation note / map lines to the new structure
- **Gate:** the map matches the new territory.

### Wave B5 — Audit + commit
- [ ] Full sweep: every wikilink resolves; CLAUDE.md + commands still load (harness pins intact); no orphaned references
- [ ] Single Layer B commit
- **Gate:** clean audit; committed. **Artifacts are NOT retired here** — see the revalidation bundle.

## Deferred to the methodology-revalidation milestone (M2)  *(trigger: Abbie ingestion queue clears → SM-04 unfreeze)*

Bundled because the inner-band restructure is the *last consumer* of the working artifacts:
1. Build the inner-band subfolders (Premise / Series-Arc / Novel-Anchors) once the methodology validates them.
2. Migrate the parked loose files (from the Series Canon ledger) into their validated inner homes.
3. **Retire `_guidance_inventory.md` + `_execution_plan.md`** — their last live content (the inner-band manifest) is now spent.

> *Separate, earlier trigger (M1 — "after the Meta reorg lands"):* the **Series Canon tiering pass** (content T-levels, incl. VT-05 true-evacuation) may run before M2; it does **not** require artifact retirement.
