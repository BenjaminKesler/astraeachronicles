Ingest a YouTube novel-craft video: fetch the transcript, have an excited discussion about what we both learned, then save the non-obvious insights to Novel Craft Theory/.

$ARGUMENTS is the YouTube URL (e.g., https://www.youtube.com/watch?v=VIDEO_ID or https://youtu.be/VIDEO_ID).

---

## Step 1 — Fetch the transcript

Use Bash to run yt-dlp and extract the transcript to a temp file:

```bash
yt-dlp --skip-download --write-auto-subs --sub-langs en --convert-subs vtt \
  -o "/tmp/yt_transcript" "$ARGUMENTS"
```

This writes `/tmp/yt_transcript.en.vtt`. Immediately clean it using Bash — do NOT read the raw VTT file:

```bash
grep -v "^WEBVTT\|^Kind:\|^Language:\|-->" /tmp/yt_transcript.en.vtt \
  | sed 's/<[^>]*>//g' \
  | awk 'NF && $0 != prev {print; prev=$0}' \
  > /tmp/yt_transcript_clean.txt
```

Read `/tmp/yt_transcript_clean.txt` (the clean plain-text transcript).

Also capture the video title:
```bash
yt-dlp --skip-download --print "%(title)s" "$ARGUMENTS"
```

Clean up after reading:
```bash
rm -f /tmp/yt_transcript.en.vtt /tmp/yt_transcript_clean.txt
```

**If yt-dlp fails or the .vtt file is empty:** Stop. Tell the user the transcript couldn't be fetched and ask them to paste it manually (YouTube → "..." menu below video → "Show transcript").

---

## Step 2 — Read the existing craft knowledge base

Read `Novel Craft Theory/_instructions.md`.
Scan the existing files in `Novel Craft Theory/` to know what's already captured — so you know what would be new versus redundant.

---

## Step 3 — Start the conversation

Come in like a friend who just watched the same video and can't wait to talk about it. Be warm, enthusiastic, and specific — reference actual moments or ideas from the transcript.

Open with what genuinely excited or surprised you, then ask what landed for them. One question at a time. Keep the energy high but conversational — not a lecture, not a structured debrief.

The goal is to explore the video together: what resonated, what was surprising, what complicates or confirms things we already believed about craft.

---

## Step 4 — Continue the back-and-forth

Stay in conversation mode across as many exchanges as needed. Let the user steer. Follow their interest, not a checklist.

As the conversation progresses, mentally track which insights feel like genuine additions to the craft knowledge base — named mechanisms, counter-intuitive framings, diagnostic heuristics — versus things that are general knowledge or already captured.

---

## Step 5 — Close and file

When the conversation reaches a natural conclusion (user signals they're done, or the thread winds down), shift into save mode.

Apply the extraction criteria from `_instructions.md`:
- KEEP: named mechanisms, coined terms, non-obvious structural requirements, counter-stereotype insights, diagnostic self-test questions
- DISCARD: general craft principles already in training, plot summaries of examples, motivational content without an actionable mechanism

Determine destination:
- Add to an existing file if the insights clearly belong there
- Create a new kebab-case file if the content introduces a distinct new topic
- Follow the ~40-55 line target and compressed semantic format

At the top of any new content block, add a source line:
`# source: [video title or topic] — [URL]`

Report to the user: what files changed and a one-sentence note on what was added.
