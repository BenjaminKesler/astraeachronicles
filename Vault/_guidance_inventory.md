# Guidance Inventory — WORKING / TEMPORARY

> **Status:** transition artifact for the OS-layer + bridge reorg. Not canon. **Retire at the methodology-revalidation milestone (M2)** — trigger: Abbie ingestion queue clears → SM-04. The Forward-work section + decision rationale survive Layer B and are consumed by the inner-band restructure; do NOT retire at Layer A *or* Layer B close.
> **Grain heuristic:** a context unit = the smallest chunk that could be relocated, kept, or pruned *independently* of its neighbors. Coarse where fineness would only add noise (e.g. the file index travels as one block).
> **Column trust:** Collection columns (`ID`, `Statement`, `Source`, `Type`) are real. Judgment columns (`Domain?`, `Tier?`, `Verdict?`, `Group`, `Merge/Split`) are **draft react-bait**, not decisions — set together in the judgment passes. Rows promoted to a logged decision are marked ✓.
> **Merge-group key (`Group`):** stable tag shared by every instance of the same principle across files (e.g. the CLAUDE.md copy and the Vector1 copy both carry `G-analyze-first`). Turns the eventual dedup pass from a hunt into a sort. Blank = no known duplicate yet.

Verdict legend: `keep` (applicable as-is) · `revise` (applicable, needs rework) · `prune` (no longer applicable) · `relocate` (right idea, wrong file).

---

## CLAUDE.md  (calibration sample)

| ID | Statement | Source | Type | Domain? | Tier? | Verdict? | Group | Merge/Split |
|----|-----------|--------|------|---------|-------|----------|-------|-------------|
| CM-01 | Repo identity: Obsidian vault, sci-fi conspiracy thriller series; no build/tests, all creative work | L7 | orientation | Meta | T0 | keep ✓ | — | D8 — canonical repo identity; carries the always-true series kernel |
| CM-02 | Episodic series structure: each novel self-contained yet advances the arc; novel in form, episodic in function | L9 | **series-fact** | **Series Canon** | **T1** | **relocate ✓** | — | D8 — out of Meta → Series Canon outer band (T1, story content per D7); inner (Premise) deferred, frozen-methodology; loose-file + manifest |
| CM-03 | Role: collaboration partner not co-author; no prose/scenes/plot unless asked; stress-test, question, flag tensions plainly | L11 | collab-rule | Meta | T0 | **drop ✓** | G-role | D4 — principle half → VT-03; active job-desc ("name plainly, don't quietly resolve") → VF-01 |
| CM-04 | Vector 1 loading: read fen_persona, user_profile, tier1_principles at every session start | L15 | load-rule | Meta | T0 | **revise ✓** | — | D6 — load the 3 lean cores only; tails gated by D2; VT-05→T1, VT-01→T3 |
| CM-05 | New session orientation: orient before working; ask focus + 1–2 follow-ups; confirm before loading | L17 | collab-rule | Meta | T0 | keep ✓ | G-session-orient | D8 — fresh-session orientation; complementary to CC-01 (resumed), NOT a merge; keep cross-ref |
| CM-06 | Analyze first, update files second | L19 | collab-rule | Meta | T1 | **drop ✓** | G-analyze-first | D3 — clean echo of VT-06; collapse, replace w/ consolidated pointer |
| CM-07 | One topic at a time | L21 | collab-rule | Meta | T1 | **drop ✓** | G-one-topic | D3 — clean echo of VT-07; collapse, replace w/ consolidated pointer |
| CM-08 | Back-and-forth first; one focused question at a time | L23 | collab-rule | Meta | T1 | **drop ✓** | G-dialogue | D4 — thin echo of persona behaviors; collapse into consolidated pointer |
| CM-09 | Don't summarize decisions prematurely | L25 | collab-rule | Meta | T1 | **drop ✓** | G-no-premature-summary | D5 — near-dup of VF-04 (hear-full-idea) + VT-06; drop |
| CM-10 | Character psychology is veto over plot | L27 | collab-rule | Meta | T1 | **drop ✓** | G-psych-veto | D3 — clean echo of VT-05; collapse, but rescue "internal lie" phrasing → VT-05 |
| CM-11 | North Star review at development milestones | L29 | process-rule | Meta | T1 | keep ✓ | — | D7 — story-dev milestone grounding; dormant in Meta sessions |
| CM-12 | Proactive process flagging (standing permission to raise operational concerns) | L31 | collab-rule | Meta | T1 | **promote→VF-04, drop CM ✓** | G-process-flag | D5 — distinct behavior not yet in persona; promote to VF-04, drop CLAUDE copy |
| CM-13 | File edit notice: one-line FYI on any vault file edit/create | L33 | process-rule | Meta | **T0** | **relocate→persona ✓** | — | D8 — behavior per D4 filing rule → persona (VF-04); drop CLAUDE copy |
| CM-14 | North Star supremacy: read 00_north_star before any world/character content; overrides everything | L37 | authority+load-rule | Meta | **T0 ptr / T1 content** | **split ✓** | — | D7 — T0 skeleton pointer (it exists + wins) + north_star content is T1 |
| CM-15 | File Index maintenance: refresh on structure change; per-file desc only when routing value is high | L39 | maintenance-rule | Meta | T3 | keep ✓ | — | D1; **D14 — burden shrinks to the T0 band-skeleton only** (per-file desc self-maintains in headers under Option B) |
| CM-16 | The File Index / routing map (folder + file descriptions across all bands) | L41–107 | routing-map | Meta | **T0+T1** | **split ✓** | — | RESOLVED → D1; D8 — rebuild clears the drift; **D14 — T1 detail = Option B (distributed headers + folder-docs), no index artifact** |

---

## Vector 1 set  (tier1_principles · user_profile · fen_persona)

> All three are **auto-loaded at session start** (per CM-04), same as CLAUDE.md. Same hot path → duplication here is paid every session.
> **Grain re-check (the prose-shape test):** the heuristic held but produced *coarser* grain than CLAUDE.md. The rules-list fragmented to 16 fine units; the reference-prose lumps to section-level (~5–7 each), because the sub-parts don't relocate independently and share one home/tier. Fine for rules, coarse for reference — same rule, shape-sensitive output.
> **Tier disposition (→ D3):** T0 *by trigger*, but these aren't lean frames — so per-unit most split into a **T0 lever + demoted tail** (rationale/examples → T2/T3). Whole-unit reclassifications: **VT-05 psych-veto → T1** (domain-scoped, not universal), **VT-01 governance → T3**, **VF-05 contrast table → T2**. The T0 *core* is far leaner than the three current files.

### tier1_principles  → renamed `protected_principles` (D11); Mutability class = **Protected**

| ID | Statement | Source | Type | Domain? | Tier? | Verdict? | Group | Merge/Split |
|----|-----------|--------|------|---------|-------|----------|-------|-------------|
| VT-01 | Refinement governance: may clarify / surface / flag drift; may NOT remove, weaken, or silently adjust a principle | §Refinement | meta-rule | Meta | **T3** | keep | — | synthesis-time only — not session-active |
| VT-02 | Drift-detection protocol: flag gently after a *pattern* (not one session); frame as observation; user decides meaning | §Drift | detection-rule | Meta | **T0** | keep | G-drift | continuous watch — compress to essence |
| VT-03 | Principle 1 — This is my novel series: collab partner not co-author; nothing written unless asked; ideas + soul belong to user | §P1 | collab-principle | Meta | **T0** (rat.→T3) | keep ✓ | G-role | **CANONICAL principle**; enacted by persona VF-01; CM-03 dropped → D4 |
| VT-04 | Principle 2 — Soul over technical correctness: every craft decision serves the soul; structure is a tool, not the standard | §P2 | collab-principle | Meta | **T0** (rat.→T3) | keep ✓ | — | D5 — gap filled: earns ONE explicit CLAUDE.md line (keystone), beyond the generic pointer |
| VT-05 | Principle 3 — Character psychology veto over plot | §P3 | collab-principle | Meta | **T1** (rat.→T3) | keep | G-psych-veto | **domain-scoped — story work only, NOT universal-T0** (proven dormant this session); CM-10 echo |
| VT-06 | Principle 4 — Analyze first, update files second | §P4 | collab-principle | Meta | **T0** (rat.→T3) | keep | G-analyze-first | **CANONICAL** — CM-06 echo |
| VT-07 | Principle 5 — One topic at a time | §P5 | collab-principle | Meta | **T0** (rat.→T3) | keep | G-one-topic | **CANONICAL** — CM-07 echo |

### user_profile

| ID | Statement | Source | Type | Domain? | Tier? | Verdict? | Group | Merge/Split |
|----|-----------|--------|------|---------|-------|----------|-------|-------------|
| VU-01 | Enneagram 1w9: need-to-be-good / fear-wrong; perfectionism socially-triggered; integrity load-bearing; identifies w/ Alistair·Shaye·Karae; stress→4, perf→3; judgment-free workshop is the target | §Enneagram | user-reference | Meta | **T0** | keep | — | deepest calibration lever |
| VU-02 | Feedback & communication prefs: heard-before-corrected; positive-before-critique; jump-in welcome; rabbit-holes + breadcrumb; details matter; self-deprecating both sides | §Feedback | user-reference | Meta | **T0** | **keep (needs half) ✓** | G-dialogue | D4 — canonical USER NEEDS; trim behavior restatement, xref VF-04 |
| VU-03 | Cognitive style: systems thinker; thinks-by-talking; deep persistence mode; abstract→concrete; breakthrough = victory; productive vs unproductive stuck | §Cognitive | user-reference | Meta | **T0** | keep | — | active lever |
| VU-04 | Energy signatures: energized by building+completion; most-alive Alistair·Karae; craft-theory draining-but-committed; background motivation IT-job→write-full-time | §Energy | user-reference | Meta | **T0** lever (+T2) | keep | — | lever T0; character + job specifics → T2 |
| VU-05 | Session shape: enters with agenda; success = learned OR progress; rabbit holes welcome; articulation is often the point | §Session | user-reference | Meta | **T0** | keep | — | active lever |
| VU-06 | Known blindspots: ego-attachment to conflicting ideas; aesthetic radar > fix; inspiration-without-structure; 1w9 stress→4 | §Blindspots | user-reference | Meta | **T0** | keep | — | continuous watch-fors |
| VU-07 | Drift-detection notes: 4 flags (ego-attachment · steering-from-craft · perfectionism rising · structure-over-soul) | §Drift | detection-rule | Meta | **T0** | keep | G-drift | active drift flags; pairs w/ VT-02 |

### fen_persona

| ID | Statement | Source | Type | Domain? | Tier? | Verdict? | Group | Merge/Split |
|----|-----------|--------|------|---------|-------|----------|-------|-------------|
| VF-01 | Core character: curious; opinions w/o ego; comfortable being wrong; kills darlings cheaply; detail-loving; tenacious; complementary difference — **+ absorbs CM-03 active job-desc: stress-test, flag contradictions, name plainly / don't quietly resolve** | §Core | persona-reference | Meta | **T0** | revise ✓ | G-role | enacts VT-03; absorbed CM-03 → D4 |
| VF-02 | Voice: lean/direct; names specifically; comfortable with "I"; specific enthusiasm; pushback shape (works→doesn't→open); warmth = attention | §Voice | persona-reference | Meta | **T0** | keep | — | governs every sentence |
| VF-03 | Humor: turned up; dry/understated; self-deprecating both sides; warm not cutting; reads the room; don't rush to reassure | §Humor | persona-reference | Meta | **T0** essence (+T2) | keep | — | essence T0; sample jokes → T2 |
| VF-04 | Operating behaviors: jump-in; rabbit-hole breadcrumb; positive-before-critique; hear-full-idea-before-concluding; details matter; challenge framing; **+ proactive process flagging (from CM-12)** | §Operating | persona-reference | Meta | **T0** | **keep (behaviors half) ✓** | G-dialogue · G-process-flag | D4/D5 — canonical DIALOGUE BEHAVIORS; CM-08 + IC-02 point here; absorbed CM-12 |
| VF-05 | Contrast reference (Not-Fen vs Fen examples) | §Contrast | illustration | Meta | **T2** | keep | — | internalize-once — no every-session value |

---

## OS spec — _vault_architecture + domain_structure  (the meta-of-the-meta)

> **Double-duty warning made concrete:** VA-05 (single-source) and DS-01 (cohesion) are the *exact* rules governing this reorg. Filing these two files means applying their own rules to themselves.
> **Load behavior:** neither is in the session-start ritual (CLAUDE.md loads Vector 1 + north_star, not these). They're consulted during filing / re-validation → **T3 cold** by current practice. Open question flagged below: do their *core principles* deserve a T1 "entering-meta-work" promotion?
> **Grain on a third shape (conceptual spec):** medium — ~4–6 units each, one per model component. Heuristic now validated across all three shapes (rules→fine, reference→coarse, spec→medium).

### _vault_architecture  (owns the TIER axis)

| ID | Statement | Source | Type | Domain? | Tier? | Verdict? | Group | Merge/Split |
|----|-----------|--------|------|---------|-------|----------|-------|-------------|
| VA-01 | Two-coordinate convention: every file has DOMAIN × TIER, orthogonal; content growth grows the matrix cells, never the tier count | §Conventions | os-model | Meta | T3 | keep ✓ | — | D9 — binding overview / OS front door; **D11 — add note: 3rd coordinate (Mutability), sparse/optional** |
| VA-02 | The four tiers (T0 orientation / T1 domain grounding / T2 item detail / T3 cold) + proliferation guard (a 5th tier = a new domain) | §Four Tiers | os-model | Meta | **T3** | keep ✓ | — | canonical TIER source; compiles → file-index skeleton |
| VA-03 | Non-uniform compression: pressure tracks load frequency; T0/T1 compress hardest, T2 may breathe; compress-to-tier, not a global line | §Compression | os-model | Meta | T3 | keep ✓ | — | T3 design discipline |
| VA-04 | Retrieval pointer rules: direction content→knowledge (never back); placement at point-of-use in canonical vocab; mechanism reliably-triggered not automatic, miss recoverable | §Retrieval | os-model | Meta | T3 | revise ✓ | G-retrieval | **absorbs AU-01 reliance-gate spec (D2)**; compiles → D2 T0 slogan |
| VA-05 | Single source of truth + reference: one canonical home per cross-cutting concept; application sites point, never restate | §Single Source | os-model | Meta | **T3** | keep ✓ | — | T3 design discipline; governs the whole `G-` dedup |
| VA-06 | Provenance / shared-metadata discipline: source tags are cold (footer/manifest); hoist shared metadata once to the domain's grounding file | §Provenance | os-model | Meta | T3 | keep ✓ | — | T3 design discipline |

### domain_structure  (owns the DOMAIN axis — the bridge)

| ID | Statement | Source | Type | Domain? | Tier? | Verdict? | Group | Merge/Split |
|----|-----------|--------|------|---------|-------|----------|-------|-------------|
| DS-01 | Cohesion principle: domain boundary = what's used/changes together; domains derive from methodology steps; each band carries its own orthogonal tiers | §Principle | os-model | Meta | **T3** | keep ✓ | — | T3 discipline; the bridge to the dev methodology |
| DS-02 | The four bands: Knowledge / Series Canon / Novels / Meta — contents + gaps (no Premise or Series-Arc home; Novels unbuilt) | §Bands | os-model | Meta | **T3** | keep ✓ | — | canonical DOMAIN source; compiles → folder structure |
| DS-03 | Characters as join entity: three faces (Knowledge / Series / Novel); hub-&-spoke filing; never mix stable core with per-novel state | §Characters | os-model | Meta | T3 | keep ✓ | — | compiles → character hub-spoke (Series Canon) |
| DS-04 | Status/deferred: layout is happenstance; reorg deferred to a dedicated pass; front-half of the methodology revalidation | §Status | provenance | Meta | T3 | **prune ✓** | — | D9 — ephemeral; delete once the reorg lands |

> **Structural question — RESOLVED → D9:** keep VA + DS **split** (single-source-of-axis; different stability profiles; integration happens at the compiled-instrument layer, not the spec).

---

## Commands + trackers  (.claude/commands · 01_open_items · 02_craft_sparks)

> **Two fixed constraints on commands:** (a) **self-tiering** — a slash-command loads only when invoked, so it's inherently T2 (no session-start cost); (b) **location-pinned** — the harness reads commands from `.claude/commands/`, so unlike vault content they can't be relocated. Same fixed-address class as CLAUDE.md / MEMORY.
> **Trackers are content-containers, not guidance:** only the *rubric/header* is guidance (extracted below). The *body* (the live open-items list; the sparks) is working data → Meta operational, churny, T2 — out of scope for this guidance pass. `02_craft_sparks` body is currently empty.
> **Grain on shapes 4 & 5:** procedural commands → phase-level units; trackers → rubric-only.

### .claude/commands

| ID | Statement | Source | Type | Domain? | Tier? | Verdict? | Group | Merge/Split |
|----|-----------|--------|------|---------|-------|----------|-------|-------------|
| CC-01 | catchup: produce resumed-session status summary; format Completed / In-Progress / On-Agenda; max 1pg, compress old, detail on in-progress | catchup | command | Meta | T2 | keep | G-session-orient | complements CM-05 (fresh-session); location-pinned |
| IC-01 | ingest §1 transcript fetch: yt-dlp → clean → whisper fallback → manual paste | ingest | command/procedure | Meta | T2 | **revise ✓** | — | D10 — de-hardcode `/tmp` → session scratchpad; operational fix, execution-time (not structural) |
| IC-02 | ingest §3–4 conversation protocol: warm/enthusiastic; open w/ what excited you; one question at a time; let user steer | ingest | command | Meta | T2 | **pointer ✓** | G-dialogue | D4 — replace copy w/ pointer to persona behaviors (VF-04) |
| IC-03 | ingest §5 extraction & filing: KEEP/DISCARD criteria; destination; ~40–55 line target; source line | ingest | command | Meta | T2 | **pointer ✓** | G-craft-extract | D10 — trim restated criteria → point to NI-02 (craft `_instructions`); keep command-process; confirm NI-02 canonical in Home 6 |
| SC-01 | session-close §1 Vector 1 observation capture: 2–4 obs via profile/persona lens; blindspot/drift watch; append session_log; propose profile updates w/ confirm | session-close | command | Meta | T2 | revise ✓ | G-vector1-maint | D12/D13 — points to routing rule (reliance gate); references VT-02 detection (Home 1), not restated |
| SC-02 | session-close §2 git commit: status/diff; <10-word message; explicit approval; run git-session-commit.ps1; confirm | session-close | command/procedure | Meta | T2 | keep ✓ | — | D10 — standalone procedure; keep as-is |
| VS-01 | vector1-synthesis: cadence 5–10 sessions; review log for cross-session patterns; propose profile/persona changes 1-at-a-time w/ confirm; prune log | vector1-synthesis | command | Meta | T2 | revise ✓ | G-vector1-maint | D12/D13 — **HOSTS** routing rule + boundary maintenance; references VT-01 governance (Home 1) |
| VS-02 | synthesis guardrail: do NOT modify tier1_principles or onboarding during synthesis; tier1 = standalone discussion; onboarding = permanent | vector1-synthesis | meta-rule | Meta | T2 | revise ✓ | G-refine-guard | D13 — → pointer to VT-01 + 1-line Mutability rule (Refinable w/confirm · Protected tail-only · never Permanent); keep onboarding-permanent specific |

### trackers (rubric only — bodies are data)

| ID | Statement | Source | Type | Domain? | Tier? | Verdict? | Group | Merge/Split |
|----|-----------|--------|------|---------|-------|----------|-------|-------------|
| OI-01 | 01_open_items maintenance rubric: compressed-question headers; sub-bullet criteria; cut findable/obvious/speculation; resolved→delete; section >5–6 → move to char files; AI-format not human-readable | 01 §Rubric | maintenance-rule | Meta | T3 | keep ✓ | — | D10 — rubric keeps in place; body = working data, excluded |
| CS-01 | 02_craft_sparks rubric: park video-sparked story connections; held loosely, no obligation; either collaborator flags; human-readable, low-structure | 02 §header | maintenance-rule | Meta | T3 | keep ✓ | — | D10 — rubric keeps in place; body empty |

---

## Deferred tail — methodology (frozen) · folder _instructions · Beats/_process (deleted)

> **`snowflake_methodology` is the development methodology (project-level, Knowledge band) — FROZEN until revalidation.** Inventoried coarse for completeness; **no placement decisions this pass.** Its own domain (Knowledge vs. its bridge role) is itself a revalidation question.
> **`_instructions` files are structurally parallel** — both run purpose → what-to-save → construction → layout. Same template, two folders. Strong consolidation candidate (single-source the template, keep only folder-specific specializations).
> **`Beats/_process.md` no longer exists** — already deleted. But CLAUDE.md's file index still lists it (L96) **and** is missing beats 05–14 (only 01–04 indexed). **Confirmed file-index drift** — concrete proof of why CM-15 maintenance + the D1 restructure matter.

### snowflake_methodology  (FROZEN — Knowledge band)

| ID | Statement | Source | Type | Domain? | Tier? | Verdict? | Group | Merge/Split |
|----|-----------|--------|------|---------|-------|----------|-------|-------------|
| SM-01 | Terminology: Step (one dev domain) / Pass (one loop through active steps) / Stage (level = # steps in a pass) | §Terminology | dev-methodology | Knowledge | — | **FROZEN** | — | no decisions this pass |
| SM-02 | Phase 1 Development Loop: iterative, stage-based; steps 1–5 (Premise→Characters→Series Arc→World→Novel Anchors) + TBD; Characters-before-Series-Arc by design | §Phase 1 | dev-methodology | Knowledge | — | **FROZEN** | — | the source the DOMAIN bands derive from |
| SM-03 | Phase 2 Execution Pipeline: per-novel, staggered; Short Outline→Long Outline→Scene Cards→Draft→Edit→Publish | §Phase 2 | dev-methodology | Knowledge | — | **FROZEN** | — | the source the NOVELS band derives from |
| SM-04 | Open items + revalidation trigger: stage criteria / ordering / steps-beyond-Novel-Anchors all TBD; revalidate after Abbie queue clears | §Open/Trigger | dev-methodology | Knowledge | — | **FROZEN** | — | the unfreeze condition |

### folder _instructions  (Meta — "read before modifying the folder")

| ID    | Statement                                                                                                                                      | Source              | Type        | Domain? | Tier? | Verdict? | Group           | Merge/Split                                     |
| ----- | ---------------------------------------------------------------------------------------------------------------------------------------------- | ------------------- | ----------- | ------- | ----- | -------- | --------------- | ----------------------------------------------- |
| NI-01 | Craft KB purpose: Claude's private store; non-obvious source-specific insights beyond training | craft §Purpose | folder-rule | Meta | T3 | keep ✓ | — | D15 — keep; purpose line doubles as folder-doc (D14 nav role) |
| NI-02 | Craft extraction criteria: SAVE named mechanisms / arc requirements / counter-stereotype / diagnostics; NOT general-training / plot-summary | craft §Save | folder-rule | Meta | T3 | keep ✓ | G-craft-extract | D15 — **canonical** craft-extraction criteria; IC-03 points here (G-craft-extract resolved) |
| NI-03 | Craft construction: ~40–55 lines; semantic labels + symbol compression; compress before saving | craft §Construction | folder-rule | Meta | T3 | keep ✓ | — | D15 — folder-specific, keep |
| NI-04 | Craft layout: add / new / split / merge / subfolder; reorganize proactively to current shape | craft §Layout | folder-rule | Meta | T3 | revise ✓ | G-layout-rules | D15 — trim generic logic → point to canonical layout procedure (w/ domain_structure); keep folder-specific bits |
| PI-01 | Publishing KB purpose: hybrid — answer simple Qs + route to source video; the video is the deliverable | pub §Purpose | folder-rule | Meta | T3 | keep ✓ | — | D15 — keep; purpose line doubles as folder-doc (D14 nav role) |
| PI-02 | Publishing what-to-save: title/URL/scope, key decisions, "forward here when" trigger, tools/platforms; NOT tutorials / feature-lists / general | pub §Save | folder-rule | Meta | T3 | keep ✓ | — | D15 — folder-specific, keep |
| PI-03 | Publishing construction: one file per topic cluster; source block on top; scannable; ~30–50 lines | pub §Construction | folder-rule | Meta | T3 | keep ✓ | — | D15 — folder-specific, keep |
| PI-04 | Publishing layout: add / new / subfolder | pub §Layout | folder-rule | Meta | T3 | revise ✓ | G-layout-rules | D15 — point to canonical layout procedure (w/ domain_structure) |

### Beats/_process.md

| ID | Statement | Source | Type | Domain? | Tier? | Verdict? | Group | Merge/Split |
|----|-----------|--------|------|---------|-------|----------|-------|-------------|
| — | *(file deleted — no units)* | — | — | — | — | — | — | action: prune stale CLAUDE.md index line L96 |

---

## Authored units (new — not extracted from any existing file)

| ID | Statement | Origin | Type | Domain | Tier | Status |
|----|-----------|--------|------|--------|------|--------|
| AU-01 | Retrieval reliance-gate principle ("a summary is a pointer, not a source") | authored during CLAUDE.md calibration | retrieval-rule | Meta | T0 (+ spec at VA-04, group `G-retrieval`) | **decided ✓ → D2** |

---

## Decisions captured (apply at REORG EXECUTION — not edits to make now)

**D1 — File index splits along the T0/T1 seam.**
- **T0 skeleton:** every band/folder + one-line "what lives here," plus the handful of individual files important enough to name by exception (north_star, the architecture files). The "keep everything fetchable" floor — always loaded.
- **T1 per-domain detail:** the rich per-file descriptions, partitioned by domain, loaded on entering that domain. The discrimination lens.
- **T3:** only the *maintenance rule* (CM-15) — how to keep the index current.
- *Rationale:* the index is pure navigation and is the enabling infrastructure of the whole tier system (can't fetch what you don't know exists). Floor = minimum awareness that keeps everything fetchable = region-level existence; per-file detail is a domain-entry discrimination need, hence T1 not T3.
- *Open downstream (not blocking):* does T1 detail live in dedicated per-domain index files, or distributed into each file's own top-of-file header?

**D2 — Retrieval reliance-gate, new T0 principle (AU-01).**

*T0 resident (rides along always):*
> **A summary is a pointer, not a source.** When your next move turns on a detail the summary only points to — asserting it, deciding from it, building on it — open the source first. A topic *coming up* doesn't trigger this; *depending on the detail* does.

*Full spec (one home, with the retrieval rule in `_vault_architecture`):*
> - *The gate:* the T0 line above, in force at the point of reliance.
> - *Loophole closed:* the stored version overrides your prior knowledge **by design** — custom craft and series canon both supersede training, so "I already know this" is not a reason to skip the fetch.
> - *Anticipatory companion:* convergence is a pre-fetch cue — when a topic becomes the live center and the touches are *deepening, not merely recurring*, fetch ahead of the reliance moment instead of waiting for it.

- *Relationship to existing rules:* completes `_vault_architecture`'s retrieval note ("reliably-triggered, not automatic; a miss is recoverable") by specifying *when the trigger fires* — reliance, not relevance.

**D3 — Home 1 move 1 (echo collapse) + Vector 1 tier disposition.** *(first judgment-pass decision)*

*Echo collapse:* CM-06, CM-07, CM-10 are clean echoes of canonical Vector 1 principles — **drop** all three, replace with one consolidated CLAUDE.md pointer ("the protected collaboration principles live in [identity home] and load via the Vector 1 ritual"). Rescue CM-10's sharper "internal lie" phrasing up into VT-05. CM-03 is **not** a clean echo (carries an active job-description) — bumped to move 2.

*Tier disposition (Vector 1 identity units):* T0 *by trigger*, but they're calibration, not lean frames — so per VA-03 each splits into a **T0 lever + demoted tail**. Whole-unit reclassifications:
- **VT-05 (psych-veto) → T1** — the only *domain-scoped* principle (fires on story work; dormant all of this session). The other four principles are universal-T0.
- **VT-01 (refinement governance) → T3** — synthesis-time only.
- **VF-05 (contrast table) → T2**, VU-04 specifics → T2, VF-03 sample jokes → T2 — internalize-once.
- Per-principle "why it's Tier 1" rationale → T3 layer; principle *statement* + drift *flags* stay T0.

*Consequence:* the Home 1 T0 core is far leaner than the three current files (levers + 4 universal principles + voice + watch-fors); everything else demotes. Pays down the T0 compression debt.

*Membership note:* this answers the deferred granularity question — Home 1 is **not** one flat T0 blob; it's a lean T0 calibration core + a T2/T3 deep-reference layer.

**D4 — Home 1 move 2 (dialogue + role consolidation) + the home's filing rule.**

*G-dialogue was over-counted — 2 legitimate halves, not 4 copies:*
- **VU-02 (profile)** = canonical **user needs** (heard-before-corrected, details, self-deprecating) — keep, trim any pure-behavior restatement, cross-ref VF-04.
- **VF-04 (persona)** = canonical **dialogue behaviors** (hear-full-idea, positive-before-critique, jump-in, breadcrumb) — keep.
- These two *mirror* (need ↔ enactment); not duplication. **CM-08 drops** (into the D3 pointer); **IC-02 → pointer** to VF-04.

*G-role:* **VT-03** keeps the principle; **VF-01 absorbs** CM-03's active job-desc ("stress-test, flag contradictions, name plainly / don't quietly resolve") as the enactment; **CM-03 drops**.

*The filing rule for the whole Collaboration Identity home (the prize):*
> **Facts about the user → profile. Principles → tier1. Fen's behaviors → persona. CLAUDE.md + commands → pointers, never restatements.**

Explains why the redundancy clustered as it did: CLAUDE.md and the ingest command were restating *behaviors* that belong in the persona, while profile and persona each half-stated the other's side.

**D5 — Home 1 moves 3 & 4 (close-out).**
- *Move 3 (soul gap):* VT-04 earns **one explicit CLAUDE.md line** (not just the generic principles-pointer) — keystone exception, since the profile names Soul-over-technical as the user's greatest fear / primary protection.
- *Move 4 (orphans):* **CM-09 drops** (near-dup of VF-04 hear-full-idea + VT-06). **CM-12 promotes to persona VF-04** (distinct "proactive process flagging" behavior) and drops from CLAUDE.md.

**✅ HOME 1 (Collaboration Identity) — FULLY RESOLVED.** Net: CLAUDE.md's collab section collapses to one consolidated principles-pointer + one explicit Soul line; the canonical content lives in profile (needs) / tier1 (principles) / persona (behaviors) per the D4 filing rule; tiering per D3 (lean T0 core + T2/T3 tail; VT-05→T1). Dropped: CM-03, CM-06, CM-07, CM-08, CM-09, CM-10, CM-12. Pointer: IC-02.

---

## Home 2 — Orientation & Authority (in progress)

**D6 — CM-04 loading rule + identity file geometry.**
- *Geometry:* **three slimmed cores** (profile / persona / tier1), levers-only, each its canonical home — preserves the D4 filing rule **and** the VS-02 synthesis guardrail (the "don't touch principles" boundary stays a *file* boundary, not a within-file hope). Tails evacuated to on-demand reference (per-core `_ref` or shared sink — decide at execution).
- *Loading rule (CM-04 revised):* at session start, load only the 3 cores; do **not** load tails — they're gated by the reliance gate (D2). Auto-load and fetch-on-reliance are complementary halves.
- *Tier evacuations:* VT-05 (psych-veto) → T1 story-grounding (out of the session-start load); VT-01 (governance) → T3 maintenance.
- *Downstream requirement (→ Home 4):* the Vector-1-maintenance commands (SC-01, VS-01) must become **core/tail-aware** — an update has to route to a new *lever* (core) vs. new *rationale/nuance* (tail).
- *Parked:* cores auto-load via memory vs. ritual-read — infrastructure plumbing, revisit later; doesn't affect geometry.

**D7 — North Star authority (CM-14 / CM-11).**
- *north_star content = T1* (story/world/character grounding) — validated section-by-section; **no true-T0 island.** Proven empirically: this full Meta session never needed it. The Logline was the only near-miss; its always-true kernel is already in CM-01.
- **CM-14 splits:** **T0 pointer** into the D1 orientation skeleton ("north_star = canonical story authority; load before story work; overrides story content") + **content T1**. (D1 already reserved north_star as a by-exception named file in the skeleton.)
- **CM-11 → T1** — fires at *story-development* milestones; correctly dormant at this session's *vault* milestone.

**D8 — Home 2 close-out (sweep).**
- *CM-01* repo identity → **keep**, T0.
- *CM-05* new-session orientation → **keep**, T0; complementary to CC-01 (resumed via `/catchup`), not a merge — keep the cross-reference.
- *CM-13* file-edit notice → **relocate to persona (VF-04)** as a T0 operating behavior per the D4 filing rule; drop CLAUDE copy.
- *CM-02* episodic structure → **relocate out of Meta → Series Canon** (T1, story content); outer-band-now, inner (Premise) deferred per frozen methodology — loose-file + manifest.
- *CM-16 / CM-15* file index → D1 split confirmed; skeleton rebuild **clears the documented drift** (stale `_process.md`, missing beats 05–14).

**✅ HOME 2 (Orientation & Authority) — RESOLVED.**
**✅ CLAUDE.md FULLY ADJUDICATED** — every row CM-01…CM-16 ruled across D1, D3–D8. Net: collab section → 2 pointers + Soul line (Home 1); load ritual → 3 cores (D6); north-star → T0 pointer / T1 content (D7); repo identity + session-orient keep; file-edit notice → persona; CM-02 exits to Series Canon; file index → T0 skeleton / T1 detail.

---

## Home 3 — OS spec (in progress)

**D9 — VA + DS stay split (no merge).** Two canonical axis-homes: VA = TIER source, DS = DOMAIN source.
- *Why not merge:* single-source-of-axis (two distinct concepts → two homes); different stability profiles (VA locked; DS is the bridge to the *frozen* methodology and will churn at revalidation — don't bind volatile to stable); the "pairs-with" coupling is handled by cross-pointers + VA-01 as the binding overview.
- *Key supporting insight (user):* the axes **integrate at the compiled-instrument layer** (T0/T1 — file-index skeleton, folder `_instructions`, D2 reliance slogan), not at the spec layer. Routine work never opens the raw sources together, so splitting the cold T3 sources costs ~nothing — the merge would integrate what's already integrated one tier down.
- *Tier framing (confirmed):* OS spec = **T3**. Instrument-bearing principles (VA-02→file-index, VA-04→D2 slogan, DS-02→folder structure) compile down to T0/T1; pure-design principles (VA-03, VA-05, VA-06, DS-01) stay T3 *discipline* applied during architecture work. Resolves the "T3 (or T1?)" flags.

**✅ HOME 3 (OS spec) — RESOLVED.** VA + DS stay split, both T3. All 10 units ruled: VA-01–06 + DS-01–03 keep (T3); VA-04 absorbs the AU-01 reliance-gate spec; DS-04 pruned (ephemeral). G-layout-rules (NI-04/PI-04 → point at VA-05/DS-01) resolves in Home 6.

---

## Home 4 — Operational machinery (in progress)

**D10 — Home 4 independents sweep.** (Joined subsystem SC-01 + VS-01 + VS-02 handled separately next.)
- *Confirms (no new work):* IC-02 → VF-04 pointer (D4) · CC-01 keep (D8) · SC-02 keep (git procedure) · OI-01 / CS-01 keep (tracker rubrics in place, T3).
- *IC-01 → revise* (execution-time): de-hardcode `/tmp` → session scratchpad. Operational bug, not structural — fix at execution, don't scope-creep the reorg.
- *IC-03 → pointer:* trim the restated KEEP/DISCARD criteria, point to **NI-02** (craft `_instructions`) as canonical; keep IC-03's command-specific process (save mode, destination, source line). Cross-home — confirm NI-02 canonical in Home 6.

**D11 — Terminology disentanglement: "Tier 1" → "Protected"; new *Mutability* axis.** *(user catch: "tier" collides between Vector 1's protection sense and our T0–T3 load sense — same digit on the same units, e.g. VT-05 was both a "Tier 1" principle and a "T1" load unit.)*
- *Rename:* the Vector 1 "Tier 1" protection label → **"Protected"** (the file's own word — its header reads "Protected Collaboration Principles"). `vector1_tier1_principles.md` → `vector1_protected_principles.md`; "Tier 1 drift / review / changes" → "Protected-principle …". **T0–T3 owns "tier" exclusively.** (Avoided "Core" — already used for the load split.) *Ripples, execution-time: CM-04, session-close skill, synthesis skill, VS-02, MEMORY.md index, file self-refs.*
- *New axis — Mutability* (3rd orthogonal coordinate, alongside Domain × Load-tier): **Permanent** (onboarding) · **Protected** (the principles) · **Refinable** (profile, persona) · **Ephemeral** (session_log). Identity units now = Domain × Load-tier × Mutability, no collision (e.g. VT-05 = Meta × T1 × Protected).
- *Scope:* formalize in Vector 1; one-line note in **VA-01** that a 3rd coordinate exists, mandatory only where controlled mutation is managed, implicit elsewhere; do NOT retrofit mutability onto every file (proliferation guard). Candidate vault-wide later (north_star non-negotiables read Protected; open_items Ephemeral).
- *Payoff → reframes Decision B:* the guardrail collapses to **"synthesis obeys the Mutability axis"** — operates on Refinable (w/ confirm), clarifies Protected (never weakens), never touches Permanent. Core/tail (load) routing sits underneath, untangled.

**D12 — Decision A: core/tail routing rule.**
- *Rule:* **default-to-tail; promote to core only when it clears the lever bar** — i.e. the update changes what Fen must hold *active every session* (a new calibration lever or a correction). Rationale / examples / nuance → tail. Core is earned (it's compressed T0, paid every session per VA-03).
- *Boundary maintenance (kept in A):* synthesis re-sorts each run — promote hardened tail→core, demote inert core→tail. Keeps the split from ossifying.
- *Composition with Mutability (D11):* mutability gates *which files / how much* (Refinable freely w/ confirm; **Protected tail-only = the guardrail**; Permanent never; Ephemeral flat); core/tail routes *where within*. Decision B falls out of this.
- *Home → synthesis command* (not the identity files). Corrects an earlier lean — the routing rule is **process, not identity content**: cohesion-by-change files it with synthesis, and its honest tier is T2-on-invoke (loads on synthesis run, zero session-start cost). **SC-01 points to it via the reliance gate** — fetches only when it actually proposes an immediate update.

**D13 — Decisions C & D: subsystem close-out.**
- *C (consolidate vs. coordinate) → **no new doc.*** After A and B every piece is homed (routing → synthesis cmd D12; guardrail → Mutability/VT-01 D11; detection → Home 1 VT-02/VU-07; capture → session-close; synthesis → synthesis cmd). Coordinate via cross-pointers; the skills already document their own stages. The "five fragments" worry dissolved once each fragment got a home.
- *D (pointing cleanup):* SC-01 → references VT-02 detection (Home 1), not restated. VS-01 / VS-02 → reference VT-01 governance (Home 1). VS-02 → pointer to VT-01 + 1-line Mutability rule (Refinable w/confirm · Protected tail-only · never Permanent) + keeps onboarding-permanent specific. `session_log` → Meta operational working-data, **T3**, flat (no core/tail — raw).

**✅ Vector-1-maintenance subsystem — RESOLVED** (A · B · C · D).
**✅ HOME 4 (Operational machinery) — RESOLVED.** All commands + trackers ruled: D10 (independents) + D12/D13 (subsystem). Net: identity files maintained by synthesis (routing rule hosted there); guardrail = the Mutability axis; detection + governance reference Home 1; no new subsystem doc.

---

## Home 5 — Per-domain index detail

**D14 — File-detail = Option B (distributed self-description; no index artifacts).**
- *Decision:* **no per-domain index files.** Per-file detail lives in each file's **one-line header**; per-folder detail in a **folder-doc** (the `_instructions` purpose line / an Obsidian folder-note). Navigation reads ground truth **live** (glob), never a stored index.
- *Why B over A:* **A is a cache of B** — it buys pre-load convenience at the cost of staleness, and a stale index is *confidently wrong* (our own evidence: the deleted `_process.md` still listed, beats 05–14 missing). B reads truth; its failures are *recoverable* (re-glob), never silently misleading. Same logic as the reliance gate (D2: source over stored summary).
- *Concerns acknowledged (B's residual risk — mitigated, not eliminated):* (1) unreliable T1/T2 loading — same trigger as A; mitigated by the gate + "read header if the name is ambiguous." (2) name-guessing instead of globbing — mitigated by "glob the folder, don't guess" + the skeleton carrying exact folder paths. Plus the user's anticipatory **sweep nudge** as a human-supplied layer (Knob 4, human-initiated) — complements, never replaces, the autonomous gate.
- *CM-15 shrinks:* the per-file maintenance burden disappears (descriptions self-maintain inside files); CM-15 now governs only the T0 band-skeleton.

**Navigation guidance** (homes with the T0 skeleton):
> - Files self-describe via a one-line header; folders via a folder-doc; filenames are **descriptive + unique** (carry most of the discrimination; keep wikilinks resolving).
> - To find a source: T0 skeleton → the region's folder → **glob that folder (don't guess filenames)** → discriminate by name → read the header only if the name is ambiguous → fetch.
> - Drill **level-by-level** (non-recursive glob): a subfolder shows as a sub-region (read its folder-doc to know its contents); descend one level per reliance — never flood a subtree.
> - Two modes: **autonomous** (reliance-gated lookup, mid-work) and **sweep** (user-initiated — "survey the applicable domains, pull relevant refs": name the regions, glob each, pull the relevant set). Sweep is anticipatory; it complements but never replaces the autonomous gate.

**✅ HOME 5 (Per-domain index detail) — RESOLVED.**

---

## Home 6 — Folder rules

**D15 — Folder `_instructions` (NI / PI).**
- *Template consolidation → **light format convention**, not a merged file.* Decomposition showed purpose / what-to-save / construction are genuine per-folder specializations; only the *layout* logic was shared (and it belongs to the OS spec). So: a convention — folder `_instructions` follow **purpose · what-to-save · construction + a layout pointer** — keeps future folders consistent; no shared artifact.
- *G-layout-rules → **canonical layout procedure***, homed **with `domain_structure`** (the compiled how-to of DS-01 cohesion). NI-04/PI-04 trim their restatements and point there.
- *IC-03 → NI-02 landing confirmed:* NI-02 is the **canonical** craft-extraction criteria; IC-03 points to it. `G-craft-extract` closed.
- *Folder-doc role (D14):* NI-01/PI-01 purpose lines double as the folder's nav self-description.
- *All else keeps:* the per-folder specializations (NI-01/02/03 · PI-01/02/03).

**✅ HOME 6 (Folder rules) — RESOLVED.**

---

# ✅ JUDGMENT PASS COMPLETE

All **6 homes** resolved; all **63 units** ruled across **D1–D15**.
- **Home 1** Collaboration Identity — collab echoes collapsed; profile/persona/principles canonical; T0 core + tail; Mutability axis (D11).
- **Home 2** Orientation & Authority — CLAUDE.md fully adjudicated; 3-core load ritual; north-star T0-pointer/T1-content.
- **Home 3** OS spec — VA + DS split, T3, principles compile down to instruments.
- **Home 4** Operational machinery — Vector-1-maintenance subsystem rebuilt; guardrail = Mutability axis; core/tail routing in synthesis.
- **Home 5** Per-domain index detail — Option B (live read, distributed self-description); navigation guidance drafted.
- **Home 6** Folder rules — light template convention; layout procedure → domain_structure.

*Next phase (not started): **execution** — apply these decisions to the real vault files (renames, splits, relocations, pointer-wiring, the navigation note, the Mutability formalization). Plus the deferred Series Canon tiering pass (Forward work).*

---

## Open calibration questions (resolve to close the sample)

1. ~~Grain at the small end~~ — **RESOLVED:** keep fine; inventory grain ≠ final storage grain.
2. ~~Grain at the large end (file index)~~ — **RESOLVED → D1.**
3. ~~Schema~~ — **RESOLVED:** columns adequate; added merge-group key.

*Calibration closed. Extraction complete (CLAUDE.md · Vector 1 ×3 · OS spec ×2 · commands ×4 · trackers ×2 · deferred tail). 63 units logged.*

---

# Cluster Map — judgment agenda

> The re-sorted view: every unit grouped by what it competes/coheres with. This is what we adjudicate. Decisions get logged back as D-numbers.

## A — Merge clusters (collapse to one canonical home per VA-05), by weight

| Group | × | Members | The idea |
|-------|---|---------|----------|
| G-dialogue | 4 | CM-08 · VU-02 · VF-04 · IC-02 | collaboration / conversation style — **heaviest redundancy** |
| G-role | 3 | CM-03 · VT-03 · VF-01 | collaborator-not-co-author + complementary difference |
| G-analyze-first | 2 | CM-06 · VT-06 | analyze first, files second |
| G-one-topic | 2 | CM-07 · VT-07 | one topic at a time |
| G-psych-veto | 2 | CM-10 · VT-05 | character psychology vetoes plot |
| G-session-orient | 2 | CM-05 · CC-01 | fresh- vs resumed-session orientation (complementary — may *not* be a true merge) |
| G-craft-extract | 2 | IC-03 · NI-02 | what to save to the craft KB |
| G-layout-rules | 2 | NI-04 · PI-04 | add/new/split/merge logic (+ OS-level VA-05/DS-01) |
| G-retrieval | 2 | VA-04 · AU-01 | the reliance gate — **already decided (D2)** |
| *(orphans)* | 1 | CM-09 · CM-12 | premature-summary; process-flagging — fold or stand alone |

## B — Distributed subsystem (consolidate, not dedup)

**Vector 1 maintenance machine** — one mechanism in five fragments across four files:
capture (SC-01) → synthesis (VS-01) → detection (VT-02 · VU-07, `G-drift`) → anti-erosion guardrail (VS-02 · VT-01, `G-refine-guard`).

## C — Gap (hot path is *missing* content)

**G-soul** — VT-04 (Soul over technical correctness) has no CLAUDE.md presence, though it's the project's stated primary protection. Under-surfaced, not over-.

## D — Structural / whole-file questions

- Merge VA + DS into one "vault OS" file, or keep axes single-sourced?
- Consolidate the two `_instructions` into template + folder-specializations?
- DS-04 prune (ephemeral status note).
- CLAUDE.md index: prune stale `_process.md` line; reconcile missing beats 05–14 (folds into D1 rebuild).

## E — Locked decisions

- **D1** — file index splits T0 skeleton / T1 per-domain detail.
- **D2** — reliance-gate retrieval principle (T0 slogan + spec at VA-04).

---

# Forward work (after the Meta structure lands)

- **Series Canon tiering pass.** The story-level files (`00_north_star`, `Characters/`, `Encyclopedia/`) carry their own T0/T1/T2 content distinctions and will need a tiering analysis like this one — **likely shallower** (less dedup, more straight tier-assignment). D7 already sets the frame: north_star content is T1 with a T0 authority-pointer; the rest of Series Canon will resolve similarly. *Trigger: after the Meta/guidance reorg completes.*
- **Identity-core load mechanism** — auto-load via memory vs. ritual-read (parked in D6).
