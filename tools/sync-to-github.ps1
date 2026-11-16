# 一键同步 MiniMax H3 Skill 到 GitHub 与本机客户端
#
# 用法：
#   pwsh -File tools/sync-to-github.ps1
#   pwsh -File tools/sync-to-github.ps1 -Message "fix: 修正穿模规则"
#   pwsh -File tools/sync-to-github.ps1 -SkipGlobal      # 只推云端，不动本机技能库
#
# 设计：仓库目录是唯一真源（single source of truth）。
#       脚本把仓库内容镜像到本机客户端技能库，然后提交并推送到 GitHub。

[CmdletBinding()]
param(
    [string]$Message = "",
    [switch]$SkipGlobal,
    [string]$GlobalSkillDir = "$env:USERPROFILE\.dsh\skills\minimax-h3-tiktok-ecommerce",
    [string]$Branch = "main"
)

$ErrorActionPreference = 'Stop'

# ---------- 定位仓库根目录 ----------
$RepoRoot = Split-Path -Parent (Split-Path -Parent $MyInvocation.MyCommand.Path)
if (-not (Test-Path (Join-Path $RepoRoot '.git'))) {
    throw "未找到 .git：$RepoRoot 不是 Git 仓库"
}

function Write-Step($Text) { Write-Host "`n>>> $Text" -ForegroundColor Cyan }
function Write-Ok($Text)   { Write-Host "    OK  $Text" -ForegroundColor Green }
function Write-Warn2($Text){ Write-Host "    !   $Text" -ForegroundColor Yellow }

Write-Host "仓库根目录：$RepoRoot"
Write-Host "目标分支  ：$Branch"

# ---------- 1. 镜像到本机客户端技能库 ----------
if (-not $SkipGlobal) {
    Write-Step "1/5 镜像到本机技能库：$GlobalSkillDir"
    try {
        if (-not (Test-Path $GlobalSkillDir)) {
            New-Item -ItemType Directory -Path $GlobalSkillDir -Force | Out-Null
        }
        $excludeDirs = @('.git', 'tools', 'node_modules', '__pycache__', '.vscode', '.idea')
        $copied = 0

        # 复制顶层文件
        Get-ChildItem -Path $RepoRoot -File |
            Where-Object { $_.Name -notlike '*.zip' } |
            ForEach-Object {
                Copy-Item $_.FullName -Destination (Join-Path $GlobalSkillDir $_.Name) -Force
                $copied++
            }

        # 复制子目录（排除 excludeDirs）
        Get-ChildItem -Path $RepoRoot -Directory |
            Where-Object { $excludeDirs -notcontains $_.Name } |
            ForEach-Object {
                $dest = Join-Path $GlobalSkillDir $_.Name
                if (-not (Test-Path $dest)) { New-Item -ItemType Directory -Path $dest -Force | Out-Null }
                Get-ChildItem $_.FullName -Recurse -File |
                    Where-Object { $_.FullName -notmatch '\\__pycache__\\' } |
                    ForEach-Object {
                        $rel = $_.FullName.Substring($RepoRoot.Length).TrimStart('\')
                        $target = Join-Path $GlobalSkillDir $rel
                        $targetDir = Split-Path -Parent $target
                        if (-not (Test-Path $targetDir)) { New-Item -ItemType Directory -Path $targetDir -Force | Out-Null }
                        Copy-Item $_.FullName -Destination $target -Force
                        $copied++
                    }
            }
        Write-Ok "已复制 $copied 个文件"
    }
    catch {
        Write-Warn2 "镜像失败（不影响推送）：$($_.Exception.Message)"
    }
}

# ---------- 2. 提交 ----------
Write-Step "2/5 暂存变更"
Push-Location $RepoRoot
try {
    git add -A
    $staged = git diff --cached --name-only
    if ([string]::IsNullOrWhiteSpace($staged)) {
        Write-Warn2 "没有文件变更"
        $hasCommit = $true
    }
    else {
        Write-Ok "暂存 $((($staged -split "`n") | Where-Object { $_ }).Count) 个文件"
        if ([string]::IsNullOrWhiteSpace($Message)) {
            $Message = "chore: sync skill @ " + (Get-Date -Format 'yyyy-MM-dd HH:mm')
        }
        Write-Step "3/5 提交：$Message"
        git commit -m $Message | Out-Null
        Write-Ok "提交完成 $(git rev-parse --short HEAD)"
        $hasCommit = $true
    }

    # ---------- 3. 推送 ----------
    Write-Step "4/5 推送到 origin/$Branch"
    git push origin $Branch 2>&1 | ForEach-Object { Write-Host "    $_" }
    Write-Ok "推送完成"

    # ---------- 4. 摘要 ----------
    Write-Step "5/5 结果"
    Write-Host "    最新提交：$(git log -1 --oneline)"
    Write-Host "    远端地址：$(git remote get-url origin)"
    if (-not $SkipGlobal) { Write-Host "    本机技能库：$GlobalSkillDir" }
}
catch {
    Write-Host "`n[失败] $($_.Exception.Message)" -ForegroundColor Red
    exit 1
}
finally {
    Pop-Location
}

Write-Host "`n全部完成。" -ForegroundColor Green
