#!/usr/bin/env bash
# Installs the system dependencies HyperFrames needs to render locally:
# FFmpeg/FFprobe (video encoding) and Chrome Headless Shell (frame capture).
set -euo pipefail

if ! command -v ffmpeg >/dev/null 2>&1 || ! command -v ffprobe >/dev/null 2>&1; then
  SUDO=""
  [ "$(id -u)" -ne 0 ] && SUDO="sudo"
  if command -v apt-get >/dev/null 2>&1; then
    $SUDO apt-get update -qq
    DEBIAN_FRONTEND=noninteractive $SUDO apt-get install -y -qq ffmpeg
  elif command -v brew >/dev/null 2>&1; then
    brew install ffmpeg
  else
    echo "Please install FFmpeg manually: https://ffmpeg.org/download.html" >&2
    exit 1
  fi
fi

npx --yes hyperframes@0.8.82 browser ensure
