# cwiczenie2
---------------------------------

PowerShell (Windows):

```powershell
.
# cwiczenie2
Szybki start

PowerShell:

```powershell
.\scripts\create_venv.ps1
.\.venv\Scripts\Activate
pytest -q
```

Git Bash / Linux:

```bash
bash scripts/create_venv.sh
source .venv/Scripts/activate
pytest -q
```

Uruchamianie lint i testów

PowerShell (po aktywacji venv):

```powershell
.\scripts\format_check.ps1
.\scripts\lint.ps1
.\scripts\test.ps1
```

Git Bash / Linux:

```bash
bash scripts/format_check.sh
bash scripts/lint.sh
bash scripts/test.sh
```

CI

Plik: `.github/workflows/python-app.yml` — na push/PR do `main` lub `develop` uruchamia: tworzenie venv, sprawdzenie formatu (black), pylint i pytest.
- `src/cli.py` — CLI
