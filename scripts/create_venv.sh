#!/usr/bin/env bash
set -euo pipefail

# Create a virtual environment and install the package and requirements
## Prefer Windows 'py -3' launcher, then python3, then python
if command -v py >/dev/null 2>&1; then
  PYTHON="py -3"
elif command -v python3 >/dev/null 2>&1; then
  PYTHON=python3
elif command -v python >/dev/null 2>&1; then
  PYTHON=python
else
  echo "No Python 3 interpreter found. Please install Python 3 and re-run this script." >&2
  exit 1
fi

# Create venv
eval "$PYTHON -m venv .venv"

# Try to activate venv in this script if possible (POSIX or Git Bash on Windows)
if [ -f .venv/bin/activate ]; then
  # POSIX layout
  # shellcheck disable=SC1091
  . .venv/bin/activate
elif [ -f .venv/Scripts/activate ]; then
  # Git Bash / Windows layout
  # shellcheck disable=SC1091
  . .venv/Scripts/activate
fi

# Determine pip executable (handle Windows and POSIX venv layouts)
if [ -x .venv/bin/pip ]; then
  VENV_PIP=.venv/bin/pip
elif [ -x .venv/Scripts/pip.exe ]; then
  VENV_PIP=.venv/Scripts/pip.exe
else
  VENV_PIP=pip
fi

$VENV_PIP install -U pip
$VENV_PIP install -e .
if [ -f requirements.txt ]; then
  $VENV_PIP install -r requirements.txt
fi

echo "Virtualenv created in .venv and dependencies installed."
