# PowerShell: format with black using venv if present
Param()
$venvBlack = ".\\.venv\\Scripts\\black.exe"
if (Test-Path $venvBlack) {
    & $venvBlack "src/" "tests/"
} else {
    black "src/" "tests/"
}
