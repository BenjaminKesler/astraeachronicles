param(
    [Parameter(Mandatory=$true)]
    [string]$Message
)

git add -A
if ($LASTEXITCODE -ne 0) { Write-Error "git add failed"; exit 1 }

git commit -m $Message
if ($LASTEXITCODE -ne 0) { Write-Error "git commit failed"; exit 1 }

git push
if ($LASTEXITCODE -ne 0) { Write-Error "git push failed"; exit 1 }

Write-Output "Committed and pushed: $Message"
