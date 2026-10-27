$ErrorActionPreference = 'Stop'
Push-Location $PSScriptRoot
try {
  typst compile --font-path assets/fonts main.typ preview.pdf
  if ($LASTEXITCODE -ne 0) { throw 'Typst compilation failed' }
} finally { Pop-Location }
