#!/bin/bash

# AlwaysData deployment script

# 1. SSH orqali ulaning (o'z ma'lumotlaringizni kiriting):
# ssh [username]@ssh-[username].alwaysdata.net

# 2. Python virtual environment yarating:
python3 -m venv ~/bot_env
source ~/bot_env/bin/activate

# 3. Repositoriyani clone qiling:
cd ~
git clone https://github.com/sardorbekuzb17-cpu/sardor-bot-converter.git bot
cd bot

# 4. Kerakli paketlarni o'rnating:
pip install -r requirements.txt

# 5. Botni background'da ishga tushiring:
nohup python3 bot.py > bot.log 2>&1 &

# 6. Bot ishlayotganini tekshiring:
ps aux | grep bot.py

echo "✅ Bot ishga tushdi!"
echo "Loglarni ko'rish: tail -f ~/bot/bot.log"
