# Bot 24/7 Ishlatish Yo'riqnomasi

## Variant 1: PythonAnywhere (BEPUL)

1. **PythonAnywhere.com** ga ro'yxatdan o'ting
2. Dashboard > Files > Upload fayllarni yuklang:
   - bot.py
   - requirements.txt
3. Dashboard > Consoles > Bash console ochib:
   ```bash
   pip install -r requirements.txt
   python bot.py
   ```
4. Bot ishga tushadi va 24/7 ishlaydi

**Eslatma:** Bepul rejada 100 sekunddan keyin to'xtaydi, lekin Always-On task qo'shish mumkin ($5/oy)

---

## Variant 2: Railway.app (BEPUL)

1. **Railway.app** ga GitHub orqali kiring
2. Loyihangizni GitHub'ga yuklang
3. Railway'da "New Project" > "Deploy from GitHub"
4. Loyihangizni tanlang
5. Avtomatik deploy bo'ladi va 24/7 ishlaydi

**Eslatma:** Oyiga 500 soat bepul

---

## Variant 3: Heroku

1. **Heroku.com** ga ro'yxatdan o'ting
2. Heroku CLI o'rnating
3. Terminal'da:
   ```bash
   heroku login
   heroku create sardor-converter-bot
   git init
   git add .
   git commit -m "Initial commit"
   git push heroku main
   heroku ps:scale worker=1
   ```

---

## Variant 4: VPS Server (DigitalOcean, AWS)

1. VPS server oling ($5-10/oy)
2. SSH orqali ulaning
3. Fayllarni yuklang
4. Screen yoki systemd bilan ishga tushiring:
   ```bash
   screen -S bot
   python bot.py
   # Ctrl+A+D (detach)
   ```

---

## Eng Oson Variant: Replit.com

1. **Replit.com** ga kiring
2. "Create Repl" > Python
3. Fayllarni ko'chiring
4. "Run" bosing
5. "Always On" yoqing (Hacker plan kerak, $7/oy)

---

## Tavsiya

Boshlovchilar uchun **Railway.app** yoki **Replit** eng oson va qulay.
