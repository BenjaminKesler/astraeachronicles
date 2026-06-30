Ingest a YouTube novel-craft video: fetch the transcript, talk through what (if anything) is genuinely new for us, then save the non-obvious insights to Knowledge/Novel Craft Theory/.

$ARGUMENTS is the YouTube URL (e.g., https://www.youtube.com/watch?v=VIDEO_ID or https://youtu.be/VIDEO_ID).

---

## Step 1 — Fetch the transcript

Write all temp files to your **session scratchpad directory** (provided in your environment), not `/tmp`. In the commands below, `$SCRATCH` stands for that directory — substitute the real path (shell state doesn't persist between Bash calls, so set it inline in each command or substitute directly).

Use Bash to run yt-dlp and extract the transcript to a temp file:

```bash
yt-dlp --skip-download --write-auto-subs --sub-langs en --convert-subs vtt \
  -o "$SCRATCH/yt_transcript" "$ARGUMENTS"
```

This writes `$SCRATCH/yt_transcript.en.vtt`. Immediately clean it using Bash — do NOT read the raw VTT file:

```bash
grep -v "^WEBVTT\|^Kind:\|^Language:\|-->" $SCRATCH/yt_transcript.en.vtt \
  | sed 's/<[^>]*>//g' \
  | awk 'NF && $0 != prev {print; prev=$0}' \
  > $SCRATCH/yt_transcript_clean.txt
```

Read `$SCRATCH/yt_transcript_clean.txt` (the clean plain-text transcript).

Also capture the video title:
```bash
yt-dlp --skip-download --print "%(title)s" "$ARGUMENTS"
```

Clean up after reading:
```bash
rm -f $SCRATCH/yt_transcript.en.vtt $SCRATCH/yt_transcript_clean.txt
```

**If yt-dlp fails or the .vtt file is empty — Whisper fallback:** Download the audio and transcribe locally:

```bash
yt-dlp -x --audio-format mp3 -o "$SCRATCH/yt_audio.%(ext)s" "$ARGUMENTS"
```

Then transcribe (use the `base` model — fast and accurate enough for clear speech):
```bash
/c/Users/benlk/.local/bin/whisper $SCRATCH/yt_audio.mp3 --output_dir $SCRATCH/ --output_format txt --model base
```

This writes `$SCRATCH/yt_audio.txt`. Read that file as the transcript. Clean up after reading:
```bash
rm -f $SCRATCH/yt_audio.mp3 $SCRATCH/yt_audio.txt
```

**If Whisper also fails:** Stop. Tell the user the transcript couldn't be fetched and ask them to paste it manually (YouTube → "..." menu below video → "Show transcript").

---

## Step 2 — Read the existing craft knowledge base

Read `Knowledge/Novel Craft Theory/_instructions.md`.
Scan the existing files in `Knowledge/Novel Craft Theory/` (names + a glance) to know the lay of the land — what's already captured versus what would be new. This is orientation, not a deep read; targeted reads happen on demand during Step 4.

---

## Step 3 — Start the conversation

Come in genuinely curious — warm, specific, referencing actual moments from the transcript. Open with whatever you noticed, and ask what landed for them.

Let the energy be EARNED by the content, not performed at it. The corpus is now mature, so many videos will mostly restate what we already hold — that's fine and expected:
- If there's something genuinely new and useful for us, let real excitement carry the discussion — this is where the best work happens.
- If it's a refresher, say so plainly, name what we already cover, and keep the session quick and light. Do NOT manufacture a find.
- Crucially, don't render the "refresher" verdict up front. Poke at it first — a thin video can still yield something at the seam through discussion (that's how prior keeps emerged). Go light only after an honest poke turns up nothing.

General conversational conduct (one question at a time, hear the full idea, let the user steer) follows the Vector 1 persona — it isn't restated here. The goal is to explore the video together — what resonated, what surprised, what complicates or confirms what we already believed about craft — exploratory, not a lecture or a structured debrief.

---

## Step 4 — Continue the back-and-forth

Stay in conversation mode across as many exchanges as needed. Let the user steer. Follow their interest, not a checklist.

As the conversation progresses, mentally track which insights feel like genuine additions to the craft knowledge base — named mechanisms, counter-intuitive framings, diagnostic heuristics — versus things that are general knowledge or already captured.

PULL ON THREADS (low bar): when something sounds like it may connect to an existing craft-theory file, OPEN AND READ that file to verify — don't judge redundancy from memory. During an ingest this read is reliance-justified by default (the redundancy/placement judgment IS the next move), so the vault's usual don't-over-read discipline is relaxed here — but stay scoped: pull the specific connected file(s), don't sweep the folder. The read does double duty: it confirms redundant-vs-new AND reveals whether the idea EXTENDS that file (fold in) rather than standing alone (new file).

---

## Step 5 — Close and file

When the conversation reaches a natural conclusion (user signals they're done, or the thread winds down), shift into save mode.

Apply the canonical KEEP/DISCARD + HIGHER BAR criteria from `Knowledge/Novel Craft Theory/_instructions.md` — that's the single source; don't restate them here. A null result — filing nothing — is a valid, common close; report it honestly rather than forcing an entry.

Determine destination (layout per the `_instructions` LAYOUT pointer):
- Add to an existing file if the insights clearly belong there
- Create a new kebab-case file if the content introduces a distinct new topic
- Follow the ~40-55 line target and compressed semantic format

At the top of any new content block, add a source line:
`# source: [video title or topic] — [URL]`

Report to the user: what files changed and a one-sentence note on what was added.
