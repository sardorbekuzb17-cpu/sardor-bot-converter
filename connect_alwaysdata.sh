#!/bin/bash

# SSH ulanish
ssh sardorsoatbot_123@ssh-sardorsoatbot_123.alwaysdata.net << 'ENDSSH'

# Python virtual environment
python3 -m venv ~/bot_env
source ~/bot_env/bin/activate

# Repository clone
cd ~
git clone https://github.com/sardorbekuzb17-cpu/sardor-bot-converter.git bot
cd bot

# Paketlarni o'rnatish
pip install -r requirements.txt

# Botni ishga tushirish
nohup python3 bot.py > bot.log 2>&1 &

# Bot ishlayotganini tekshirish
ps aux | grep bot.py

echo "✅ Bot ishga tushdi!"

ENDSSH
