#!/usr/bin/env bash
set -euo pipefail

# Remove venv and common build artifacts
rm -rf .venv build dist *.egg-info

# Remove __pycache__ and .pyc files
find . -type d -name "__pycache__" -print -exec rm -rf {} + || true
find . -type f -name "*.pyc" -print -delete || true

echo "Cleaned repository (removed .venv, build artifacts, __pycache__, .pyc files)."
