# AlwaysData Deploy Qo'llanma

## 1. SSH Sozlash
1. https://admin.alwaysdata.com/ssh/ ga kiring
2. SSH parolini o'rnating yoki SSH kalitini qo'shing
3. SSH ma'lumotlarini yozib oling:
   - Host: `ssh-[username].alwaysdata.net`
   - Username: sizning username
   - Port: 22

## 2. SSH orqali ulaning
```bash
ssh [username]@ssh-[username].alwaysdata.net
```

## 3. Botni o'rnatish
SSH'da quyidagi buyruqlarni bajaring:

```bash
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
```

## 4. Bot holatini tekshirish
```bash
# Bot ishlayotganini ko'rish
ps aux | grep bot.py

# Loglarni ko'rish
tail -f ~/bot/bot.log

# Botni to'xtatish (agar kerak bo'lsa)
pkill -f bot.py
```

## 5. Bot avtomatik qayta ishga tushishi uchun
AlwaysData'da "Scheduled tasks" (Cron jobs) qo'shing:
- Command: `cd ~/bot && source ~/bot_env/bin/activate && python3 bot.py`
- Frequency: Every 5 minutes
- Bu bot to'xtab qolsa avtomatik qayta ishga tushiradi

## 6. Bot yangilanishlarini olish
```bash
cd ~/bot
git pull origin master
pkill -f bot.py
nohup python3 bot.py > bot.log 2>&1 &
```

## Muhim:
- AlwaysData 100% bepul (100 MB disk, 10 MB RAM)
- Bot 24/7 ishlaydi
- SSH orqali to'liq nazorat
- Credit card kerak emas
