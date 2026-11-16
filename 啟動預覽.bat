@echo off
rem 啟動本機預覽 (不開啟額外 Explorer 視窗)

rem 在背景啟動 HTTP 伺服器，最小化視窗避免彈出
start "" /b python -m http.server 3000 >nul 2>&1

rem 等待伺服器啟動 (2 秒)
timeout /t 2 >nul

rem 開啟預設瀏覽器指向本機站點
start "" "http://localhost:3000"

rem 結束批次檔，關閉此命令提示字元視窗
exit