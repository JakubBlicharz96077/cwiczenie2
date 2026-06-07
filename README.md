# cwiczenie2

Quick start
-----------

1. Create and activate venv (Git Bash):

```bash
bash scripts/create_venv.sh
source .venv/Scripts/activate
```

2. Install editable package and requirements (if not done by the script):

```bash
.venv/Scripts/python.exe -m pip install -e .
.venv/Scripts/python.exe -m pip install -r requirements.txt
```

3. Run tests:

```bash
.venv/Scripts/python.exe -m pytest -q
```

Helper scripts
--------------

- `scripts/create_venv.sh` / `scripts/create_venv.ps1` – create venv & install deps
- `scripts/test.sh` / `scripts/test.ps1` – run pytest
- `scripts/format.sh` / `scripts/format.ps1` – run black formatter
- `scripts/format_check.sh` / `scripts/format_check.ps1` – check formatting
- `scripts/lint.sh` / `scripts/lint.ps1` – run pylint
- `scripts/clean.sh` / `scripts/clean.ps1` – clean repo (.venv, build, __pycache__)

Project status (against excercise.md):

- Krok 1: GitHub repo / branches — not applicable locally
- Krok 2: Program + tests — DONE (package in `src/simplecalc`, tests in `tests/`)
- Krok 3: black + pylint config — DONE (`pyproject.toml`)
- Krok 4: helper scripts — DONE (`scripts/`)
- Krok 5: CI workflow — TODO (example workflow file can be added)
- Krok 6..9: documentation, validation, submission — partial (README updated)

If you want I can add the GitHub Actions workflow file and run a local lint/test check.
# cwiczenie2