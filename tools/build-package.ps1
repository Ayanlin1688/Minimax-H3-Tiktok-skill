# 打包 Skill 为可分发 zip
#
# 用法：
#   pwsh -File tools/build-package.ps1
#   pwsh -File tools/build-package.ps1 -OutDir "D:\dist"
#
# 产物：MiniMax-H3-TikTok-Ecommerce-Skill-v<版本>.zip
#       版本号取自 CHANGELOG.md 最新一条 [x.y.z]

[CmdletBinding()]
param(
    [string]$OutDir = ""
)

$ErrorActionPreference = 'Stop'

$RepoRoot = Split-Path -Parent (Split-Path -Parent $MyInvocation.MyCommand.Path)
if ([string]::IsNullOrWhiteSpace($OutDir)) {
    $OutDir = Split-Path -Parent $RepoRoot
}

function Write-Step($Text) { Write-Host "`n>>> $Text" -ForegroundColor Cyan }
function Write-Ok($Text)   { Write-Host "    OK  $Text" -ForegroundColor Green }

# ---------- 读取版本号 ----------
$changelog = Join-Path $RepoRoot 'CHANGELOG.md'
$version = '0.0.0'
if (Test-Path $changelog) {
    $m = Select-String -Path $changelog -Pattern '^##\s*\[(\d+\.\d+\.\d+)\]' | Select-Object -First 1
    if ($m) { $version = $m.Matches[0].Groups[1].Value }
}
Write-Host "仓库根目录：$RepoRoot"
Write-Host "版本号    ：v$version"

# ---------- 收集文件 ----------
Write-Step "收集文件（排除 .git / tools / __pycache__ / zip）"
$excludeDirs  = @('.git', 'tools', 'node_modules', '__pycache__', '.vscode', '.idea')
$excludeFiles = @('*.zip', '*.7z', '*.rar')

$files = @()
$files += Get-ChildItem -Path $RepoRoot -File | Where-Object { $_.Name -notlike '*.zip' }
foreach ($d in (Get-ChildItem -Path $RepoRoot -Directory | Where-Object { $excludeDirs -notcontains $_.Name })) {
    $files += Get-ChildItem -Path $d.FullName -Recurse -File |
        Where-Object { $_.FullName -notmatch '\\__pycache__\\' }
}

Write-Ok "$($files.Count) 个文件"

# ---------- 打包 ----------
if (-not (Test-Path $OutDir)) { New-Item -ItemType Directory -Path $OutDir -Force | Out-Null }
$zipPath = Join-Path $OutDir ("MiniMax-H3-TikTok-Ecommerce-Skill-v{0}.zip" -f $version)
if (Test-Path $zipPath) { Remove-Item $zipPath -Force }

Write-Step "打包 -> $zipPath"
Add-Type -AssemblyName System.IO.Compression.FileSystem
$zip = [System.IO.Compression.ZipFile]::Open($zipPath, 'Create')
try {
    foreach ($f in $files) {
        $rel = $f.FullName.Substring($RepoRoot.Length).TrimStart('\').Replace('\', '/')
        [System.IO.Compression.ZipFileExtensions]::CreateEntryFromFile(
            $zip, $f.FullName, $rel, [System.IO.Compression.CompressionLevel]::Optimal) | Out-Null
    }
}
finally {
    $zip.Dispose()
}

# ---------- 校验 ----------
$size = (Get-Item $zipPath).Length
$hash = (Get-FileHash $zipPath -Algorithm SHA256).Hash.ToLower()

Write-Step "生成校验文件"
$shaPath = "$zipPath.sha256"
"$hash  $(Split-Path -Leaf $zipPath)" | Set-Content -Path $shaPath -Encoding ASCII

Write-Ok ("{0}  ({1:N1} KB)" -f (Split-Path -Leaf $zipPath), ($size / 1KB))
Write-Ok "SHA256: $hash"
Write-Ok "校验文件: $(Split-Path -Leaf $shaPath)"

Write-Host "`n完成。" -ForegroundColor Green
