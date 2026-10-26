# ==============================================================================
# Kịch bản Thiết lập Tự động Môi trường Làm Game Godot 4 + VS Code trên Windows
# Chạy tự động qua tệp BAM_VAO_DAY_DE_SETUP_WINDOWS.bat
# ==============================================================================

$ErrorActionPreference = "Continue"
[Console]::OutputEncoding = [System.Text.Encoding]::UTF8

Write-Host "=================================================================" -ForegroundColor Cyan
Write-Host "  🚀 THIẾT LẬP MÔI TRƯỜNG GODOT 4 + VS CODE + GIT LFS (WINDOWS)  " -ForegroundColor Cyan
Write-Host "=================================================================" -ForegroundColor Cyan
Write-Host ""

# 1. Kích hoạt Git LFS
Write-Host "[1/4] Đang kiểm tra và kích hoạt Git LFS..." -ForegroundColor Yellow
if (Get-Command "git-lfs" -ErrorAction SilentlyContinue) {
    git lfs install
    Write-Host "  ✅ Đã kích hoạt Git LFS thành công!" -ForegroundColor Green
} else {
    Write-Host "  ⚠️ Chưa tìm thấy git-lfs. Đang thử cài qua winget..." -ForegroundColor Yellow
    winget install -e --id Git.GitLFS --accept-source-agreements --accept-package-agreements
    git lfs install
}
Write-Host ""

# 2. Cài đặt 4 Extensions bắt buộc trên VS Code
Write-Host "[2/4] Đang cài đặt 4 Extensions cho VS Code..." -ForegroundColor Yellow
if (Get-Command "code" -ErrorAction SilentlyContinue) {
    $extensions = @(
        "geequlim.godot-tools",
        "usernamehw.errorlens",
        "eamodio.gitlens",
        "yzhang.markdown-all-in-one"
    )
    foreach ($ext in $extensions) {
        Write-Host "  -> Cài đặt $ext ..."
        code --install-extension $ext --force
    }
    Write-Host "  ✅ Đã cài đủ 4 Extensions VS Code!" -ForegroundColor Green
} else {
    Write-Host "  ❌ Không tìm thấy lệnh 'code' trong PATH. Hãy mở VS Code và bật 'Add to PATH'!" -ForegroundColor Red
}
Write-Host ""

# 3. Kiểm tra Godot 4 & REAPER trên Windows (tùy chọn cài qua winget)
Write-Host "[3/4] Kiểm tra Godot Engine 4 & REAPER DAW..." -ForegroundColor Yellow
$godotCmd = Get-Command "godot" -ErrorAction SilentlyContinue
if (-not $godotCmd) {
    Write-Host "  💡 Gợi ý: Nếu máy chưa cài Godot 4 hoặc REAPER, bạn có thể chạy lệnh sau trong PowerShell:" -ForegroundColor Cyan
    Write-Host "     winget install -e --id GodotEngine.GodotEngine" -ForegroundColor Gray
    Write-Host "     winget install -e --id Cockos.REAPER" -ForegroundColor Gray
}
Write-Host ""

# 4. Tạo cấu hình .vscode/settings.json trong Godot_Project cho Windows
Write-Host "[4/4] Đang cấu hình kết nối LSP (cổng 6005) cho Godot_Project..." -ForegroundColor Yellow
$vscodeDir = Join-Path $PSScriptRoot "Godot_Project\.vscode"
if (-not (Test-Path $vscodeDir)) {
    New-Item -ItemType Directory -Path $vscodeDir | Out-Null
}
$settingsPath = Join-Path $vscodeDir "settings.json"
$settingsJson = @"
{
    "godotTools.lsp.serverPort": 6005,
    "files.eol": "\n"
}
"@
Set-Content -Path $settingsPath -Value $settingsJson -Encoding UTF8
Write-Host "  ✅ Đã tạo Godot_Project\.vscode\settings.json (Port 6005, LF line endings)!" -ForegroundColor Green

Write-Host ""
Write-Host "=================================================================" -ForegroundColor Cyan
Write-Host "  🎉 HOÀN TẤT THIẾT LẬP TRÊN PC WINDOWS!                         " -ForegroundColor Green
Write-Host "  - Mở Godot 4 -> Import: Godot_Project\project.godot            " -ForegroundColor White
Write-Host "  - Mở VS Code -> Open Folder: Godot_Project                     " -ForegroundColor White
Write-Host "=================================================================" -ForegroundColor Cyan
