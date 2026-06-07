# PowerShell: check formatting with black using venv if present
Param()
$venvBlack = ".\\.venv\\Scripts\\black.exe"
if (Test-Path $venvBlack) {
    & $venvBlack --check "src/" "tests/"
} else {
    black --check "src/" "tests/"
}
