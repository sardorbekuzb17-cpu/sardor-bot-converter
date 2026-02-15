@echo off
echo Bot ishga tushmoqda...
:loop
py bot.py
echo Bot to'xtadi, 5 sekunddan keyin qayta ishga tushadi...
timeout /t 5
goto loop
