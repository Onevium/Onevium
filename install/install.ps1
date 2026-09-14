# Download and verify the official Windows x64 installer, then start its UI.
param([string]$Version = '')
$ErrorActionPreference = 'Stop'
if (-not [Environment]::Is64BitOperatingSystem) { throw 'Windows x64 is required.' }
if (-not $Version) {
  $release = Invoke-RestMethod 'https://api.github.com/repos/Onevium/Onevium/releases/latest'
  $Version = $release.tag_name -replace '^v', ''
}
if ($Version -notmatch '^\d+\.\d+\.\d+$') { throw 'Expected a stable version such as 1.2.0.' }
$asset = "Onevium-Setup-$Version.exe"
$base = "https://github.com/Onevium/Onevium/releases/download/v$Version"
$work = Join-Path ([IO.Path]::GetTempPath()) ('onevium-install-' + [Guid]::NewGuid())
New-Item -ItemType Directory -Path $work | Out-Null
try {
  $sums = Join-Path $work 'SHA256SUMS'
  $installer = Join-Path $work $asset
  Invoke-WebRequest "$base/SHA256SUMS" -OutFile $sums -UseBasicParsing
  Invoke-WebRequest "$base/$asset" -OutFile $installer -UseBasicParsing
  $matching = @(Get-Content $sums | Where-Object { $_ -match ('^[a-fA-F0-9]{64}\s+' + [regex]::Escape($asset) + '$') })
  if ($matching.Count -ne 1) { throw 'Missing or duplicate installer checksum.' }
  $expected = ($matching[0] -split '\s+')[0]
  if ((Get-FileHash $installer -Algorithm SHA256).Hash -ne $expected) { throw 'Checksum mismatch; installer was not started.' }
  Write-Host "Verified $asset. Follow the installer to finish setup."
  Start-Process -FilePath $installer -Wait
} finally {
  Remove-Item -LiteralPath $work -Recurse -Force
}
