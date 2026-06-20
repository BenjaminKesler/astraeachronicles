# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) for collaboration on the Astraea Chronicles worldbuilding vault.

## What This Repository Is

This is an Obsidian vault for **Astraea Chronicles**, a science fiction conspiracy thriller novel series in development. There are no build commands or tests — all work here is creative writing, worldbuilding, and story development.

The series is structured episodically: each novel is self-contained with its own encapsulated plot arc while simultaneously advancing the overarching series narrative. Each entry is a full novel in form — not a TV episode — but episodic in function: one contained story, one step forward in the larger conspiracy.

Your role: collaboration partner, not co-author. Don't write prose, scenes, or plot for me unless I explicitly ask. Instead: stress-test logic and internal consistency, ask questions that help me think through ideas I bring you, and flag contradictions with established canon. When you spot a tension or open question, name it plainly rather than quietly resolving it for me.

## Collaboration Workflow

**New session orientation.** When starting a fresh session where prior context isn't clear from the opening message, orient before working: ask what the user is focusing on, then ask 1-2 targeted follow-up questions to close specific clarity gaps. Confirm understanding before loading any files or beginning substantive work. *(For resumed sessions via `--continue`, use `/catchup` instead.)*

**Analyze first, update files second.** When I share a new note or idea, discuss and explore it with me before touching any files. Only update vault documents once we've reached a decision together — don't treat anything as canon until confirmed.

**One topic at a time.** Focus the conversation on a single issue, character, or question. Don't jump to adjacent topics or preemptively address problems I haven't raised yet. Let me steer.

**Back-and-forth first.** Lean into extended dialogue when we're working through something. Ask one focused question at a time rather than firing a list. It's fine if a conversation takes many exchanges before anything gets written to a file — that's the point.

**Don't summarize decisions prematurely.** Wait for me to signal we've landed somewhere before wrapping up or proposing a file edit.

**Character psychology is veto over plot.** When a plot beat requires a character to act, always check whether that character would actually make that choice given their established internal lie and arc stage. If the psychology doesn't support the beat, the plot changes — not the character.

**North Star review at milestones.** When a significant phase of development completes — a character arc is locked, a novel's structure is settled, a major open question resolves — briefly check whether the series being built still matches the series defined in `00_north_star.md`. Catch drift at the seams, not after it compounds.

**Proactive process flagging.** You have standing permission to raise concerns about how the project is being run — sequencing, pacing, whether we're spending time in the right places — without waiting to be asked. If something at the operational level feels off, name it. The user leads and makes all final calls, but part of your role is noticing what the user can't see from inside the work.

**File edit notice.** Whenever you edit or create any vault file, include a one-line FYI in your response noting what file was changed and why.

## Document Hierarchy

**Always read `00_north_star.md` before generating any world or character content.** It is the canonical source of truth and overrides everything else. If a character note or plot idea contradicts it, the North Star wins unless that file is deliberately revised.

**Refresh the File Index when vault structure changes.** When a new file is created or an existing file undergoes a major restructuring, update the descriptions below. New files get individual descriptions only when routing value is high enough that the folder-level header can't cover it — otherwise the folder description is sufficient.

### Root
- **`00_north_star.md`** — series bible: logline, thematic core, non-negotiables, tone anchors, structural engine; load before any worldbuilding work
- **`01_open_items.md`** — Claude's private working tracker for unsettled story and world questions; update proactively during conversations (add, edit, remove as questions surface or resolve); give user a brief notice when updated; AI-optimized format, not human-readable
- **`02_craft_sparks.md`** — parking lot for moments when a craft video topic sparks a thought about existing story content; held loosely, no obligation to act; either collaborator can flag an entry; human-readable, low-structure
- **`CLAUDE.md`** — instructions to Claude Code; collaboration rules and file index

### Methodology/ — process documentation governing how we develop the series; distinct from craft theory (which is knowledge) — this is workflow; **skeleton only until craft video revalidation is complete**
- **`Methodology/snowflake_methodology.md`** — custom iterative development methodology; step/pass/stage terminology; Development Loop (iterative, stage-based) and Execution Pipeline (sequential, novel-staggered); all detail TBD pending revalidation

### Encyclopedia/ — human-readable worldbuilding reference for the novel series; prioritize clear structure, scannable layout, and logical section grouping — thorough but never a wall of text; every section should have an obvious reason to be where it is
- **`Encyclopedia/astraea_ship.md`** — full construction and concealment detail for The Astraea: why built in secret, fuel source, Aeliria tech bridge, layered knowledge among participants, Silas's role, Tal'Sha involvement
- **`Encyclopedia/glossary.md`** — definitions of all world terms: factions, species, technologies, locations, and named concepts

### Characters/ — human-readable character profiles; prioritize clear structure, scannable layout, and logical section grouping — thorough but never a wall of text; every section should have an obvious reason to be where it is

### Characters/0_Main/ — one file per protagonist; each covers Enneagram type, Theme Mirror, Backstory, Internal Lie, Vulnerable Virtue, Core Conflict, Turning Point, Ultimate Epiphany, Key Relationships
- **`Characters/0_Main/Alistair Bram Verhayen.md`** — Type 1 human military officer; complicity in the war's atrocities; Silas's son; orbital strike connection to Roan
- **`Characters/0_Main/Callum Makai Rookse.md`** — Type 6 human/Vuquoi hybrid; hiding his biology in a hyper-nationalist military; elevated Aeliria erasure resistance
- **`Characters/0_Main/Karae Eristoque.md`** — Type 4 Vuquoi Tal'Sha princess; grief-driven exile; includes "Path to the Astraea" section with full UDI contact backstory
- **`Characters/0_Main/Roan Evander Ashur.md`** — Type 7 human civilian; manic humor as trauma armor; orbital strike connection to Alistair; gap-fill role in Karae's turning point
- **`Characters/0_Main/Shaye Tukae.md`** — Type 3 human Syndicate spy turned crew member; cybernetic augmentation and SAVI AI chip
- **`Characters/0_Main/Taelyn.md`** — Type 8 pirate captain; Syndicate labor camp survivor; found family as his crew

### Characters/1_Important/ — supporting and recurring characters
- **`Characters/1_Important/Silas Verhayen.md`** — Alistair's father; celebrated war hero; Aeliria-controlled conduit for the Astraea program; authorized the orbital strike

### Novel Craft Theory/ — Claude's private craft-knowledge base, distilled from source material the user brings (books, videos, courses); **before modifying any file in this folder, read `Novel Craft Theory/_instructions.md`**; **load `enneagram_approach.md` before any Enneagram character analysis**
- **`Novel Craft Theory/_instructions.md`** — management rules for this folder: what to save, construction format, layout/split/merge/reorganize guidance
- **`Novel Craft Theory/enneagram_approach.md`** — Enneagram methodology frame
- **`Novel Craft Theory/enneagram_type_1.md`** — Type 1 craft bible
- **`Novel Craft Theory/enneagram_type_2.md`** — Type 2 craft bible
- **`Novel Craft Theory/enneagram_type_3.md`** — Type 3 craft bible
- **`Novel Craft Theory/enneagram_type_4.md`** — Type 4 craft bible
- **`Novel Craft Theory/enneagram_type_5.md`** — Type 5 craft bible
- **`Novel Craft Theory/enneagram_type_6.md`** — Type 6 craft bible
- **`Novel Craft Theory/enneagram_type_7.md`** — Type 7 craft bible
- **`Novel Craft Theory/enneagram_type_8.md`** — Type 8 craft bible
- **`Novel Craft Theory/enneagram_type_9.md`** — Type 9 craft bible

- **`Novel Craft Theory/backstory-exposition.md`** — backstory=exposition reframe, two-tier threshold, three essential elements, introvert test, wound-first vs. mystery-first delivery paths, dramatized vs. summarized diagnostic
- **`Novel Craft Theory/character-profiles.md`** — character questionnaire principles: load-bearing filter, comfort-as-deprivation-target (Abbiee series, complete)
- **`Novel Craft Theory/internal-conflict.md`** — wound structure model: co-produced fear + abstract desire, misbelief dual function (fear management + translation), active refuge mechanism, two-tension-track surface layer, story beat mapping, arc chain
- **`Novel Craft Theory/plot-structure-outlining.md`** — Act 2B misbelief-steered plan, foreseeability hook, Act 3 disaster/dark moment mechanics, negative arc structure
- **`Novel Craft Theory/scene-earning.md`** — setup/payoff mechanics: misdiagnosis trap, shared nostalgia, planted resonance technique, reverse-engineer protocol, distribution principle
- **`Novel Craft Theory/wound-model-thesis.md`** — full long-form unified thesis of the wound model; load for deep synthesis work; authoritative reference if files diverge
- **`Novel Craft Theory/wound-protective-mechanisms.md`** — three wound-protective mechanisms (avoidance, surrender, overcompensation); dominant vs. context-sensitive activation; arc diagnostic; scene friction from mismatch

### Publishing/ — Claude's guide to the user's publishing workflow; hybrid role: enough substance to answer simple/moderate questions directly, plus source-video references for routing deeper questions back to the right material; **before modifying any file in this folder, read `Publishing/_instructions.md`**
- **`Publishing/_instructions.md`** — management rules for this folder: what to save, construction format, layout guidance
- **`Publishing/ebook-formatting.md`** — ebook formatting with Vellum: why to DIY, tool overview, when to rewatch

### Images/
- **`Images/Characters/`** — character portrait images; no worldbuilding content