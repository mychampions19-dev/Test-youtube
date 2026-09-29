# Verification: higgsfield-explainer (v2, real walkthrough)

## Transcript
ElevenLabs Scribe text, force-aligned per word with pocketsphinx (`transcript.json`,
145 words). Alignment pauses agree with ffmpeg silencedetect within ~60 ms.

## Walkthrough footage (35.3-53.57 s)
Source: the user's screen recording `assets/screen.mp4` (1886x928, 36.6 s).

Privacy pass (baked into the pixels with gblur, then cropped to 1886x876 to drop the
Windows taskbar/desktop icons):

| Region (source px) | Time (s) | What |
| - | - | - |
| 1596,4 170x46 | all | Browser profile button ("Verify it's you" + avatar) |
| 950,292 680x180 | 11.8-18.8 | Google account chooser: names, emails, avatars |
| 1676,48 210x52 | 18.7+ | Signed-in account icons / avatar |
| 55,552 460x170 | 18.7-27.9 | "Higgsfield in Claude" activity panel |
| 1500,796 380x70 | 24.5+ | "Credits are running low" account notice |
| 425,684 880x110 | 27.5-33.7 | Uploaded reference photo + prompt text |
| 868,684 436x110 | 33.7+ | Part of the prompt still visible beside the menu |

Not used in the edit at all: the Bing search (0-4.7 s), the Google chooser (11.8-18.7 s),
the blank tool-page load (27.8-31.9 s) and the browser tab preview (36.0 s+).

Edit list (`assets/screen-edit.mp4`, 18.268 s):

| Out (global) | Source | Speed | Narration |
| - | - | - | - |
| 35.30-37.40 | 7.1-9.5 | 1.14x | "Go to higgsfield.ai and select sign up" (real click lands 37.31) |
| 37.40-38.60 | 9.5-10.7 | 1x | sign-up modal opens |
| 38.60-50.00 | freeze on 10.7 | still | 18+, Google / Apple / Microsoft / email, email code |
| 50.00-51.90 | 18.75-20.65 | 1x | "Once you're signed in, pick a tool from the homepage" |
| 51.90-53.57 | 33.75-35.40 (+0.2 hold) | 1x | "and start creating" (Video tools menu, Generate) |

Zooms/highlights are GSAP transforms on `#scr` with lime rings drawn in recording
coordinates. The email 6-digit-code card is an illustrative overlay, because the
recording signed in with Google and never shows the email-code screen.

## Checks
- `npx hyperframes lint`: 0 errors (3 display-only warnings).
- `node scripts/preflight.mjs`: passed.
- `npx hyperframes check`: passed; 34/34 contrast checks WCAG AA.
- Snapshots reviewed at every walkthrough beat (35.9 ... 53.2 s): no personal data visible.
