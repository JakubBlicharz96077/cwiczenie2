# PowerShell: clean venv and build artifacts
Param()

if (Test-Path ".\.venv") {
    Remove-Item -LiteralPath .\.venv -Recurse -Force -ErrorAction SilentlyContinue
}
if (Test-Path "build") { Remove-Item -LiteralPath build -Recurse -Force -ErrorAction SilentlyContinue }
if (Test-Path "dist") { Remove-Item -LiteralPath dist -Recurse -Force -ErrorAction SilentlyContinue }
Get-ChildItem -Path . -Recurse -Force -Include "__pycache__" -Directory | ForEach-Object { Remove-Item $_.FullName -Recurse -Force -ErrorAction SilentlyContinue }
Get-ChildItem -Path . -Recurse -Force -Include "*.pyc" -File | ForEach-Object { Remove-Item $_.FullName -Force -ErrorAction SilentlyContinue }
Write-Host "Cleaned repository (removed .venv, build artifacts, __pycache__, .pyc files)."
