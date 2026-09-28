# Test-youtube

Video animations built with [HyperFrames](https://github.com/heygen-com/hyperframes): write HTML + GSAP, render deterministic MP4s.

## Setup

Requires Node.js 22+.

```bash
npm run setup     # installs FFmpeg + Chrome Headless Shell
npm run doctor    # verify the environment
```

## Workflow

```bash
npm run dev       # live preview in the browser (Studio)
npm run check     # lint + runtime + layout + motion + contrast checks
npm run render    # render index.html to renders/*.mp4
```

`index.html` is the root composition. Sub-compositions go in `compositions/`, media in `assets/`.

## With Claude Code

The HyperFrames skills are committed in `.claude/skills/`. Ask something like:

> Using /hyperframes, create a 15-second YouTube intro for my channel about [topic].
