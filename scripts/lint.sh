#!/usr/bin/env bash
set -euo pipefail

# Run pylint on the package
if [ -x .venv/bin/pylint ]; then
  .venv/bin/pylint src/simplecalc
elif [ -x .venv/Scripts/pylint.exe ]; then
  .venv/Scripts/pylint.exe src/simplecalc
else
  pylint src/simplecalc
fi
