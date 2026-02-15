# Bot 24/7 Ishlatish - Eng Oson Usul

## USUL 1: Render.com (BEPUL, ENG OSON)

### Qadamlar:

1. **GitHub'ga yuklash:**
   ```bash
   git init
   git add .
   git commit -m "Bot tayyor"
   git branch -M main
   git remote add origin https://github.com/SIZNING_USERNAME/bot.git
   git push -u origin main
   ```

2. **Render.com'ga kirish:**
   - https://render.com ga kiring
   - GitHub bilan ro'yxatdan o'ting

3. **Bot deploy qilish:**
   - "New +" > "Web Service"
   - GitHub repository'ni ulang
   - "Build Command": `pip install -r requirements.txt`
   - "Start Command": `python bot.py`
   - "Free" rejani tanlang
   - "Create Web Service"

4. **Tayyor!** Bot 24/7 ishlaydi!

---

## USUL 2: Railway.app (BEPUL, 500 soat/oy)

1. https://railway.app ga kiring
2. "New Project" > "Deploy from GitHub"
3. Repository'ni tanlang
4. Avtomatik deploy bo'ladi
5. Tayyor!

---

## USUL 3: Replit.com (ENG OSON, lekin $7/oy)

1. https://replit.com ga kiring
2. "Create Repl" > "Import from GitHub"
3. Repository URL kiriting
4. "Run" bosing
5. "Always On" yoqing (Hacker plan kerak)

---

## USUL 4: PythonAnywhere (BEPUL sinov)

1. https://pythonanywhere.com ga kiring
2. "Files" > fayllarni yuklang
3. "Consoles" > "Bash"
4. Buyruqlar:
   ```bash
   pip install -r requirements.txt
   python bot.py
   ```

---

## USUL 5: Hozirgi Kompyuterda (Windows)

Kompyuter yoniq turishi kerak:

1. `start_bot.bat` faylini yarating:
   ```batch
   @echo off
   :loop
   python bot.py
   timeout /t 5
   goto loop
   ```

2. Faylni ishga tushiring
3. Kompyuterni o'chirmang

---

## TAVSIYA

**Boshlovchilar uchun:** Render.com yoki Railway.app
**Eng oson:** Replit.com (pullik)
**Bepul:** Render.com

Qaysi birini tanlaysiz?
