#!/usr/bin/env bash
# Claude Code on the web: containers start fresh, so install render deps each session.
set -euo pipefail
[ "${CLAUDE_CODE_REMOTE:-}" = "true" ] || exit 0
"$CLAUDE_PROJECT_DIR"/scripts/setup.sh >/tmp/hyperframes-setup.log 2>&1 \
  || echo "HyperFrames setup failed; see /tmp/hyperframes-setup.log" >&2
