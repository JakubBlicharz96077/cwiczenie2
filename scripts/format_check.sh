#!/usr/bin/env bash
set -euo pipefail

# Check formatting with black
if [ -x .venv/bin/black ]; then
  .venv/bin/black --check src/ tests/
elif [ -x .venv/Scripts/black.exe ]; then
  .venv/Scripts/black.exe --check src/ tests/
else
  black --check src/ tests/
fi
