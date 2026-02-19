# AlwaysData Service Setup (24/7 Bot)

AlwaysData'da botni 24/7 ishlashi uchun "Service" yaratish kerak (SSH orqali emas).

## Qadamlar:

1. **AlwaysData admin panelga kiring**: https://admin.alwaysdata.com/

2. **Services bo'limiga o'ting**: 
   - Chap menuda "Services" ni toping
   - "Add a service" tugmasini bosing

3. **Service sozlamalari**:
   - **Type**: Custom
   - **Command**: 
     ```
     /home/sardorsoatbot/bot_env/bin/python3 /home/sardorsoatbot/bot/bot.py
     ```
   - **Working directory**: `/home/sardorsoatbot/bot`
   - **Name**: telegram-bot
   - **Auto-restart**: Yes (galochka qo'ying)

4. **Save** tugmasini bosing

5. Service avtomatik ishga tushadi va 24/7 ishlaydi

## Service holatini tekshirish:
- Services bo'limida botning holati ko'rinadi (Running/Stopped)
- Loglarni ko'rish uchun service nomini bosing

## Muhim:
- Service avtomatik qayta ishga tushadi (agar xatolik bo'lsa)
- SSH orqali `nohup` ishlatish shart emas
- AlwaysData process'larni o'ldiradi, lekin Service'lar doim ishlaydi
