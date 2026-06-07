# PowerShell script: create venv and install dependencies
Param()

python -m venv .venv
# Activate in interactive shell
if (Test-Path ".\.venv\Scripts\Activate.ps1") {
    Write-Host "To activate the venv in this session run: .\\.venv\\Scripts\\Activate"
}

# Use the venv pip to install
$venvPip = Join-Path -Path ".\.venv\Scripts" -ChildPath "pip.exe"
if (Test-Path $venvPip) {
    & $venvPip install -U pip
    & $venvPip install -e .
    if (Test-Path "requirements.txt") {
        & $venvPip install -r requirements.txt
    }
    Write-Host "Virtualenv created and dependencies installed."
} else {
    Write-Error "pip not found in .venv; ensure venv was created successfully."
}
