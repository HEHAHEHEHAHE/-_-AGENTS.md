@echo off
rem Check port 3000 and start hidden Python HTTP server if needed
powershell -NoProfile -Command "if (!(Get-NetTCPConnection -LocalPort 3000 -ErrorAction SilentlyContinue)) { Start-Process -WindowStyle Hidden python -ArgumentList '-m http.server 3000' ; Start-Sleep -Milliseconds 800 }"

rem Open browser with a fresh cache-busting query parameter to force load newest content
start "" "http://localhost:3000/?t=%random%#/wiki/papers/2023_zhigulin_stark_blue_hbn"

exit
