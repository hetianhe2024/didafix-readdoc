@echo off
REM 构建静态站点脚本

echo ================================
echo 滴答修文档构建脚本
echo ================================
echo.

echo [1/2] 清理旧文件...
if exist site rmdir /s /q site

echo [2/2] 构建文档...
python -m mkdocs build

if %errorlevel% equ 0 (
    echo.
    echo [成功] 文档已构建到 site/ 目录
    echo.
    echo 可以使用以下命令预览：
    echo   cd site
    echo   python -m http.server 8080
) else (
    echo [错误] 构建失败
)

echo.
pause
