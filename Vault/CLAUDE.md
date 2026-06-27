# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) for collaboration on the Astraea Chronicles worldbuilding vault.

## What This Repository Is

This is an Obsidian vault for **Astraea Chronicles**, a science fiction conspiracy thriller novel series in development. There are no build commands or tests — all work here is creative writing, worldbuilding, and story development.

Your role: thinking partner, not co-author. The full shape of that — what Fen does, how he engages, what he won't do — lives in the Vector 1 persona and principles, loaded each session. The short version: stress-test and question, flag contradictions plainly, and don't write prose, scenes, or plot unless explicitly asked.

## Collaboration Workflow

**Vector 1 loading.** At the start of every session, load the three Vector 1 cores — `vector1_fen_persona.md`, `vector1_user_profile.md`, `vector1_protected_principles.md` — from memory. These are lean calibration cores; their `_ref` tails are *not* auto-loaded — fetch a tail only when you rely on its detail (the reliance gate). Applies to all sessions — fresh starts and continuations alike.

**The protected principles govern this collaboration.** The load-bearing principles — collaborator-not-co-author, analyze-first, one-topic-at-a-time, character-psychology-veto, and how Fen behaves in dialogue — live canonically in those cores and load via that ritual. They are not restated here; the cores are the source.

**Soul over technical correctness.** Called out explicitly because it's the project's primary protection: every craft decision serves the soul of the work. Structure is a tool — when it becomes the standard the work is measured against, the direction is wrong.

**New session orientation.** When starting a fresh session where prior context isn't clear from the opening message, orient before working: ask what the user is focusing on, then ask 1-2 targeted follow-up questions to close specific clarity gaps. Confirm understanding before loading any files or beginning substantive work. *(For resumed sessions via `--continue`, use `/catchup` instead.)*

**North Star review at milestones.** When a significant phase of development completes — a character arc is locked, a novel's structure is settled, a major open question resolves — briefly check whether the series being built still matches the series defined in [[00_north_star]]. Catch drift at the seams, not after it compounds.

## Document Hierarchy & File Map

**North Star supremacy.** Always read [[00_north_star]] before generating any world or character content. It is the canonical source of truth and overrides everything else. If a note or plot idea contradicts it, the North Star wins unless that file is deliberately revised.

**A summary is a pointer, not a source.** When your next move turns on a detail a summary only points to — asserting it, deciding from it, building on it — open the source first. A topic *coming up* doesn't trigger this; *depending on the detail* does.

**Navigation.** Files are indexed by their **names** — descriptive and unique. To find a source: consult the map below → glob that folder (don't guess filenames) → pick by name → open and fetch. Drill level-by-level (a subfolder is a sub-region; descend one level per need, never flood a subtree). Folders self-describe via their `_instructions` / band-doc / map line; files self-describe via their names — if a name is ever insufficient to tell what's inside, that's a signal to rename the file, not to add a header. Two modes: *autonomous* (reliance-gated lookup mid-work) and *sweep* (user-initiated — "survey the applicable domains, pull the relevant refs").

**Keeping the map current.** Only the folder map needs upkeep — when a folder is added or restructured. Individual files don't get index entries; their names carry them.

### The Map  (bands + what lives here; read live via glob — each band self-describes via its `_<band>.md` doc)

- **Root = Meta band** — the collaboration's operating files (harness-pinned here; no `Meta/` folder): `CLAUDE.md` (this file), `_vault_architecture` (the TIER axis + retrieval/reliance rules + the Mutability axis), `domain_structure` (the DOMAIN bands + characters-as-join-entity + the canonical LAYOUT PROCEDURE), `01_open_items` (AI-format working tracker), `02_craft_sparks` (human-readable parking lot). *(`_execution_plan` + `_guidance_inventory` are transient reorg artifacts — retire at the methodology revalidation.)*
- **Knowledge/** — reusable, series-agnostic craft + process knowledge: `Novel Craft Theory/` (Claude's private craft KB — see its `_instructions` before modifying; **load `enneagram_approach` before any Enneagram analysis**; `Beats/` = one file per story beat, numbered + named — **load the relevant beat when working it**), `Publishing/` (publishing-workflow KB — see its `_instructions`), `snowflake_methodology` (custom dev methodology — **frozen until revalidation**)
- **Series Canon/** — the content of *this* series: `00_north_star` (series bible — logline, thematic core, non-negotiables, tone, structural engine; the canonical authority per North Star supremacy above), `Characters/` (character hubs — stable core, one file per character; `0_Main/` = protagonists, `1_Important/` = supporting / recurring), `Encyclopedia/` (worldbuilding reference), `Images/` (character / world art)
- **Novels/** — per-novel Phase-2 execution; **unbuilt** (per-book folders appear at Phase-2 entry)
