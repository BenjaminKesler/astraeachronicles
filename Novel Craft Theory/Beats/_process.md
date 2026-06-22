# Story Beat Video — Deep Ingest Process
# TEMPORARY — archive after all Abbie story beat videos are ingested
# applies to: story beat videos in the Abbie Emmons 3-act structure series (numbered arc with predecessor beat files)
# for standalone craft topics (subplots, scene earning, backstory, etc.): standard ingest-craft-video skill is sufficient
# the signal: does this video contribute to a named beat in a sequential arc with existing predecessor files?

---

## Why This Process Is Different From Standard Ingest

Story beat videos don't just add new knowledge — they extend a connected arc where every beat inherits from the ones
before it and potentially corrects them. The standard ingest extracts what the video adds. This process does that
AND cross-references the full theory base, stress-tests against authoritative sources, audits in both directions,
and doesn't write a single line until the full picture is confirmed. The extra phases consistently surface things
the video alone never would — corrections to earlier files, gaps our model doesn't cover, and places where our
synthesis is ahead of standard sources.

---

## PHASE 0 — Setup (before any analysis)

1. Run the `/ingest-craft-video` skill with the video URL — this fetches the transcript, cleans it, and captures the video title
2. When the skill opens the discussion (Step 3), redirect: explain this is a story beat video and you are following the deep ingest process; ask the user to confirm before proceeding to Phase 1
3. Read `Novel Craft Theory/_instructions.md` — refresh on what to save and what to discard
4. Read EVERY file in `Novel Craft Theory/` — not just the Beats subfolder
   WHY: latent confusions that span the full theory base only surface when you hold everything at once;
   reading only the adjacent beat files will miss them (the genre promise / value charge conflation is the
   example — it only appeared because we had the full context loaded)
5. Read ALL existing beat files in order — understand the full arc state before analyzing the new beat

---

## PHASE 1 — Extract Principals From the Video

6. Pull EVERY principal from the transcript:
   — named mechanisms (even if clumsily named in the video — rename for precision)
   — non-obvious structural requirements
   — diagnostic questions or self-tests
   — counter-stereotype insights ("not courage; a recalculation")
   — coined terms or framings worth preserving
   Do not filter yet. Get everything on the table before evaluating what's new vs. already captured.

7. CHECKPOINT — open the discussion:
   Share what genuinely excited or surprised you from the video. One or two things, not a list.
   Ask the user what landed for them.
   This is the collaborative entry point — the analysis that follows should be informed by both reads.
   Don't move to cross-referencing until the opening exchange has happened.

---

## PHASE 2 — Cross-Reference With the Wound Model

8. Map each principal from Phase 1 against `wound-model-thesis.md`:
   — where does it unify? (same event, different vantage point)
   — where does it conflict? (genuine disagreement requiring resolution)
   — where does it add a mechanism layer? (names something the wound model implies but doesn't articulate)
   The goal is symbiosis, not mere compatibility. "These are the same insight from different angles" is a stronger
   finding than "these don't contradict each other."

9. Map the video's beat against the established story beat state chain:
   — what is the protagonist's misbelief/mechanism state at this beat?
   — how does it differ from the preceding beat's state?
   — what internal shift does this beat produce that sets up the next?

10. CHECKPOINT — confirm understanding before proceeding:
    Share the wound-model synthesis. If any concept is unclear or the unification feels forced, stop and discuss it
    before moving on. Don't carry a misunderstood concept into the full analysis.
    Example: the "while still avoiding fear" qualifier needed to be named precisely before it could be integrated —
    a vague understanding would have produced a vague beat file.

---

## PHASE 3 — Beat Alignment Check (Bidirectional)

11. Review ALL preceding beat files. For each one, check:
    — does anything in this beat's analysis require updating how a prior beat is described?
    — does this beat inherit something from a prior beat that needs to be explicitly noted?
    — are there state descriptions, failure modes, or relational functions in prior files that are now imprecise
      given what we know from this beat?

12. Run the forward audit explicitly:
    What from earlier beats must carry INTO the new beat?
    (Examples: desire crystallization from II; comfort zone value from Hook; impossible choice type from Build-up)

13. Run the backward audit explicitly:
    What from the new beat's synthesis should track BACK into earlier files?
    (Examples: "first link in causal chain" being misattributed in Build-up; abstract desire chain pointer needed
    across Hook/II/Build-up; retreat-seeding-reversibility as a named function in Build-up)
    The backward audit is where corrections to earlier files are found. Don't skip it.

14. CHECKPOINT — share the bidirectional audit:
    Present what needs to flow forward and what needs to flow back. Confirm with the user before proceeding.
    Note: the backward corrections may feel like scope creep — they aren't. They're the mechanism by which the
    theory base stays internally consistent as it grows.

---

## PHASE 4 — Stress-Test Against Authoritative Sources

15. From training, identify the most authoritative sources on this specific beat or structural concept.
    Name them explicitly. For story structure beats, the core list is:
    Weiland (Structuring Your Novel / Creating Character Arcs), Field (Screenplay), Snyder (Save the Cat),
    McKee (Story), Hauge (Hero's 2 Journeys), Vogler (Writer's Journey), Bell (Plot & Structure),
    Truby (Anatomy of Story), Cron (Story Genius)
    Not all are equally relevant to every beat — select the ones with the deepest treatment of this specific beat.

16. For each source, identify their key claim about this beat. Then map our model against the full field:
    — ALIGNED: where do we match or exceed the standard framing?
    — AHEAD: where does our synthesis go deeper than any individual source?
      (name these — it's useful to know where our model is strongest)
    — GAP: where does an authoritative source name something our model doesn't cover?
      (name each gap explicitly; don't fold them together)

17. CHECKPOINT — share the full assessment:
    Present aligned, ahead, and gap findings. Discuss which gaps are genuine additions vs. not applicable to
    our framework. User steers which gaps to integrate and in what order.
    This step consistently adds concepts the video alone doesn't surface. For the FPP beat: irreversibility,
    value charge shift, values revelation, refusal as precursor, and stakes legibility all came from here.

---

## PHASE 5 — Work Through Integration Gaps

18. Take gaps one at a time in user-steered order.
    For each gap:
    a. If the concept needs clarification before integrating, stop and unpack it in dialogue.
       Don't assume shared understanding of a term or mechanism — confirm it.
       Example: "value charge shift" required a full discussion before we could correctly place it in the model.
       This produced a clean integration; skipping it would have produced a confused one.
    b. Once the concept is clear, discuss how it integrates with the existing framework:
       — does it create a new layer, or name something already implied?
       — does it change how an existing concept is described?
       — does it create tension with anything already in the files?
    c. Let the user make the final call on integration before moving to the next gap.

19. Watch for latent confusions in existing files that surface during gap discussion.
    These are as valuable as the gaps themselves. Example: working through "value charge shift" surfaced that
    our files had blended genre promise and global value charge without distinguishing them — a conflation that
    needed correcting across all preceding beat files.

20. CHECKPOINT — confirm all gaps resolved:
    Before moving to the sanity check, confirm every gap has been either integrated or explicitly set aside
    with a reason. Don't leave gaps in an ambiguous state.

---

## PHASE 6 — Final Sanity Check

21. Run one more bidirectional concept audit — now with the full integration picture in view:
    a. Are there concepts in earlier beat files that haven't been accounted for in the new beat's design?
       (Check: design requirements, diagnostic questions, failure modes, relational layer, sympathy layer)
    b. Are there concepts in the new beat that should now be seeded or corrected in earlier files?
       (These are the additions Phase 3 may have missed — surface them here)

22. Confirm the complete list of files to be touched:
    — new beat file (what number/name?)
    — which preceding beat files need updates?
    — does story-beats.md need its stub updated?
    Don't start writing until this list is confirmed.

23. CHECKPOINT — get explicit confirmation:
    State the full scope of changes and confirm with the user before writing anything.
    "We're going to create X and update Y, Z, and story-beats.md — does that match your picture?"

---

## PHASE 7 — Write to Disk

24. Write the new beat file first.
    Follow the established beat file format (see 01_hook.md through 04_first_plot_point.md for conventions):
    — source line at top
    — authority line if stress-test was run
    — synthesis and cross-reference lines
    — position percentage
    — WOUND LAYER with state line
    — GENRE LAYER
    — VALUE CHARGE SHIFT (if applicable — distinct section from genre)
    — SYMPATHY LAYER with state line
    — RELATIONAL LAYER with named function
    — FAILURE MODES
    — DESIGN REQUIREMENTS including POSITION INHERITANCE
    — DIAGNOSTIC QUESTIONS

25. Update preceding beat files.
    The immediately preceding beat typically needs the most work. Go in reverse order (most recent first).
    For each update: use targeted Edit calls; don't rewrite sections that don't need changing.

26. Update story-beats.md stub:
    Replace [stub] with ✓ → Beats/0N_beatname.md
    Update the state line to reflect the full synthesis.

27. Report all file changes with a one-line note on what each change did.

---

## Notes on Confirmation Checkpoints

Checkpoints are not pro forma — they're where the analysis gets corrected before it hardens into files.
The natural rhythm: analyze → share → discuss → confirm → proceed. Don't skip phases to save time.
The session that produced this process took many exchanges before anything was written. That was correct.
The cost of an extra exchange before writing is near zero. The cost of writing from a misunderstood concept
and then correcting it is high — especially when the concept propagates across multiple files.

---

## After All Beat Videos Are Complete

Archive this file. Its value is as a working guide during the ingest period, not as permanent theory content.
The process it encodes will live implicitly in the shape of the beat files themselves.
