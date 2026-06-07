#!/usr/bin/env bash
set -euo pipefail

# Run tests using the venv python if available, otherwise system python
if [ -x .venv/bin/python ]; then
  .venv/bin/python -m pytest "$@"
elif [ -x .venv/Scripts/python.exe ]; then
  .venv/Scripts/python.exe -m pytest "$@"
else
  python -m pytest "$@"
fi
