# Higgsfield explainer: design

Keynote-style explainer. The talking head stays the anchor; the frame reorganises
around what she is explaining, and every visual lands on the word that names it
(`transcript.json`, word-aligned).

## Camera states (one `#cam` wrapper, transform + clip-path, video never resized)

| State | When | Frame |
| - | - | - |
| FULL | 0.0-4.0 hook | Full-frame footage, dark liquid-glass card on the left |
| CARD | 4.0-35.3 features | Footage slides into a rounded card on the right (x 1060-1840); dark stage on the left carries product UI |
| PIP | 35.3-end walkthrough | Footage shrinks to a rounded picture-in-picture bottom-right; a browser screencast fills the left |

## Look

- Stage: near-black #09090b with a soft lime glow; panels #141417, hairline borders.
- Accent: lime #d4ff3a for the single thing being pointed at; white text; 60% white secondary.
- Type: Inter 600-800, tight tracking.
- Motion: expo/power ease-outs, blur-to-sharp entrances, staggered reveals on the spoken
  word, no bounce except small UI pops. Cursor moves ease in-out and clicks with a ripple.
- Sound: quiet UI SFX (media-use library) on layout moves, clicks, typing, the inbox
  notification and success chime. Voice stays dominant.

## Beats

| Time | Words | Visual |
| - | - | - |
| 0.0 | "level up your content creation without... advanced technical skills" | Glass card: Level up / content creation; "advanced technical skills" struck through |
| 4.1 | "Higgsfield is an AI-native creative suite" | Wordmark types in, tagline |
| 7.3 | "video production, character consistency, ad creation under one subscription" | Three pills stack, then fold into one lime "one subscription" pill |
| 12.2 | "Cinema Studio... multi-shot scenes with camera control" | Viewer mock, 3 shot thumbnails, camera move overlay |
| 16.9 | "Soul ID... train an AI character once... every project" | Avatar trains to 100%, then clones into 4 project cards |
| 22.8 | "Marketing Studio turns product images or links into finished video ads" | Product tile + link chip -> finished ad playing |
| 27.8 | "top AI models like Seedance, Kling, Veo, and Sora" | 2x2 model tiles pop on each name |
| 33.9 | "Getting started is simple" | Four-step preview |
| 35.3-53.5 | Sign-up walkthrough | The user's real screen recording in a window, zoomed per beat: address bar, real Sign up click, real sign-up modal (Google / Apple / Microsoft / Email ringed as named), 18+ badge, email-code overlay card, real signed-in homepage (Cinema Studio), real Video tools menu, Generate |

The walkthrough is real footage with personal details blurred (see VERIFY.md). Only the
email 6-digit-code card is an illustrative overlay, since the recording used Google sign-in.
