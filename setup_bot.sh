#!/bin/bash

echo "🚀 Bot o'rnatish boshlandi..."

# Python virtual environment
echo "📦 Virtual environment yaratilmoqda..."
python3 -m venv ~/bot_env
source ~/bot_env/bin/activate

# Repository clone
echo "📥 Repository yuklanmoqda..."
cd ~
git clone https://github.com/sardorbekuzb17-cpu/sardor-bot-converter.git bot
cd bot

# Paketlarni o'rnatish
echo "📚 Paketlar o'rnatilmoqda..."
pip install -r requirements.txt

# Botni ishga tushirish
echo "🤖 Bot ishga tushirilmoqda..."
nohup python3 bot.py > bot.log 2>&1 &

sleep 2

# Bot ishlayotganini tekshirish
echo "✅ Bot holati:"
ps aux | grep bot.py | grep -v grep

echo ""
echo "✅ Bot ishga tushdi!"
echo "📊 Loglarni ko'rish: tail -f ~/bot/bot.log"
echo "🔄 Botni to'xtatish: pkill -f bot.py"
