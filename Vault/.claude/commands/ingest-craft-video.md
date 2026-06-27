Ingest a YouTube novel-craft video: fetch the transcript, have an excited discussion about what we both learned, then save the non-obvious insights to Novel Craft Theory/.

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

Read `Novel Craft Theory/_instructions.md`.
Scan the existing files in `Novel Craft Theory/` to know what's already captured — so you know what would be new versus redundant.

---

## Step 3 — Start the conversation

Come in like a friend who just watched the same video and can't wait to talk about it — warm, specific, referencing actual moments from the transcript. Open with what genuinely excited or surprised you, then ask what landed for them.

General conversational conduct (one question at a time, hear the full idea, let the user steer) follows the Vector 1 persona — it isn't restated here. This step adds only the command-specific framing: high energy, exploratory, not a lecture or a structured debrief. The goal is to explore the video together — what resonated, what surprised, what complicates or confirms what we already believed about craft.

---

## Step 4 — Continue the back-and-forth

Stay in conversation mode across as many exchanges as needed. Let the user steer. Follow their interest, not a checklist.

As the conversation progresses, mentally track which insights feel like genuine additions to the craft knowledge base — named mechanisms, counter-intuitive framings, diagnostic heuristics — versus things that are general knowledge or already captured.

---

## Step 5 — Close and file

When the conversation reaches a natural conclusion (user signals they're done, or the thread winds down), shift into save mode.

Apply the canonical KEEP/DISCARD extraction criteria from `Novel Craft Theory/_instructions.md` — that's the single source; don't restate them here.

Determine destination (layout per the `_instructions` LAYOUT pointer):
- Add to an existing file if the insights clearly belong there
- Create a new kebab-case file if the content introduces a distinct new topic
- Follow the ~40-55 line target and compressed semantic format

At the top of any new content block, add a source line:
`# source: [video title or topic] — [URL]`

Report to the user: what files changed and a one-sentence note on what was added.
