# PowerShell: run pytest using venv python if present
Param([Parameter(ValueFromRemainingArguments=$true)] $Args)

$venvPy = ".\\.venv\\Scripts\\python.exe"
if (Test-Path $venvPy) {
    & $venvPy -m pytest @Args
} else {
    py -3 -m pytest @Args
}
