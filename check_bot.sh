#!/bin/bash
# Bot holatini tekshirish

echo "=== Bot process ==="
ps aux | grep python | grep bot

echo -e "\n=== Bot log (oxirgi 30 qator) ==="
tail -30 ~/bot/bot.log

echo -e "\n=== Bot fayllari ==="
ls -la ~/bot/

echo -e "\n=== Python versiya ==="
python3 --version

echo -e "\n=== Virtual env ==="
ls -la ~/bot_env/bin/python3
