@echo off
echo RDP SUCCESSFULL!
tasklist | find /i "ngrok.exe" >Nul && goto check || echo "Cannot get to NGROK tunnel and make sure NGROK_AUTH_TOKEN is correct in Settings > Secrets > Repository secret Maybe your previous is VM still run: https://dashboard.ngrok.com/status/tunnels" & ping 127.0.0.1 >Nul & exit
:check
ping 127.0.0.1 > null
cls
echo RDP SUCCESSFULL!
goto check
