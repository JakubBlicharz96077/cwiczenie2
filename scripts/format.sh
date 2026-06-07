#!/usr/bin/env bash
set -euo pipefail

# Format code with black (use venv black if available)
if [ -x .venv/bin/black ]; then
  .venv/bin/black src/ tests/
elif [ -x .venv/Scripts/black.exe ]; then
  .venv/Scripts/black.exe src/ tests/
else
  black src/ tests/
fi
