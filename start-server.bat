@echo off
REM 滴答修文档本地预览启动脚本

echo ================================
echo 滴答修 ReadTheDocs 文档
echo ================================
echo.

REM 检查 Python 是否安装
python --version >nul 2>&1
if %errorlevel% neq 0 (
    echo [错误] 未检测到 Python，请先安装 Python 3.8+
    pause
    exit /b 1
)

echo [1/3] 检查依赖...
python -m pip show mkdocs >nul 2>&1
if %errorlevel% neq 0 (
    echo [安装] 正在安装 MkDocs 依赖...
    python -m pip install -r requirements.txt --user
    if %errorlevel% neq 0 (
        echo [错误] 依赖安装失败
        pause
        exit /b 1
    )
)

echo [2/3] 启动 MkDocs 服务器...
echo [提示] 服务器将在 http://127.0.0.1:8000 运行
echo [提示] 按 Ctrl+C 停止服务器
echo.

python -m mkdocs serve

pause
