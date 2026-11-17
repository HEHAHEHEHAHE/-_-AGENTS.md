@echo off
rem Check port 3000 and start hidden Python HTTP server if needed
powershell -NoProfile -Command "if (!(Get-NetTCPConnection -LocalPort 3000 -ErrorAction SilentlyContinue)) { Start-Process -WindowStyle Hidden python -ArgumentList '-m http.server 3000' ; Start-Sleep -Milliseconds 800 }"

rem Open browser to the paper directly
start "" "http://localhost:3000/#/wiki/papers/2023_zhigulin_stark_blue_hbn"

exit
