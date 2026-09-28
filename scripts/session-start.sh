#!/usr/bin/env bash
# Claude Code on the web: containers start fresh, so install render deps each session.
set -euo pipefail
[ "${CLAUDE_CODE_REMOTE:-}" = "true" ] || exit 0
cd "$CLAUDE_PROJECT_DIR"
{ npm ci --no-audit --no-fund && scripts/setup.sh; } >/tmp/hyperframes-setup.log 2>&1 \
  || echo "HyperFrames setup failed; see /tmp/hyperframes-setup.log" >&2
