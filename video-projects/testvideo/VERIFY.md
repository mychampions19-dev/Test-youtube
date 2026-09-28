# Verification: texas-killing-fields

- Transcript: ElevenLabs Scribe text, force-aligned per word with pocketsphinx
  (`transcript.json`). Alignment pauses match ffmpeg silencedetect within 40 ms
  (6.48-6.87 s, 8.41-8.84 s).
- `npx hyperframes lint`: 0 errors, 1 warning (nested_structure_needs_subcomposition,
  Studio display only).
- `node scripts/preflight.mjs`: all checks passed.
- `npx hyperframes check`: passed. One contrast sample at 0.696 s is an odometer
  digit mid-roll (motion-blurred by design); settled text passes WCAG AA.
- Render: 1920x1080, 30 fps, 12.53 s, with audio. Pauses in the rendered audio
  land at the same timestamps as the source, so A/V sync is intact.
- Frames reviewed at each beat and at every beat change: no overlapping beats, card never
  covers the face, text readable over the white wall.
