# Verification: higgsfield-explainer

- Transcript: ElevenLabs Scribe text, force-aligned per word with pocketsphinx
  (`transcript.json`, 145 words). Alignment pauses agree with ffmpeg silencedetect
  within ~60 ms across the full 53.6 s.
- `npx hyperframes lint`: 0 errors. 3 warnings: file size / nested structure (Studio
  timeline display only).
- `node scripts/preflight.mjs`: all checks passed.
- `npx hyperframes check`: passed (runtime, layout, motion, 56/56 contrast checks WCAG AA).
- Render: 1920x1080, 30 fps, 53.6 s. Voice pauses in the render land at the same
  timestamps as the source (6.55, 8.09, 11.71, ... 50.91 s) and voice peak levels are
  unchanged, so A/V sync is intact and SFX sit under the voice.
- Frames reviewed: every scene, both camera moves (FULL->CARD at 3.9 s, CARD->PIP at
  35.2 s), modal open, code entry, success, homepage, final prompt.
- Fixed during review: clip-path interpolation jumped during camera moves (browser
  normalises computed inset strings) -> explicit fromTo values; browser faded in over
  the shrinking footage -> footage layered above from 35.15 s; hero text overlapping the
  modal -> faded behind the scrim.
- SFX in `assets/sfx/` are copies of the media-use skill's bundled Pixabay-licensed files.
