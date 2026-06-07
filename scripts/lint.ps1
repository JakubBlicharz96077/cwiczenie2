# PowerShell: run pylint using venv if present
Param()
$venvPylint = ".\\.venv\\Scripts\\pylint.exe"
if (Test-Path $venvPylint) {
    & $venvPylint "src/simplecalc"
} else {
    pylint "src/simplecalc"
}
