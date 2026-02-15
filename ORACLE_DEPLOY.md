# Oracle Cloud'ga Deploy (ABADIY BEPUL)

## 1. Oracle Cloud Account

1. https://www.oracle.com/cloud/free/ ga kiring
2. "Start for free" bosing
3. Ro'yxatdan o'ting (kredit karta kerak, lekin pul yechilmaydi)
4. Email tasdiqlang

## 2. Compute Instance Yaratish

1. Oracle Cloud Console'ga kiring
2. Menu → Compute → Instances
3. "Create Instance" bosing

**Sozlamalar:**
- Name: `sardor-bot`
- Image: `Ubuntu 22.04`
- Shape: `VM.Standard.A1.Flex` (Always Free)
- OCPU: 1
- Memory: 6 GB
- Boot Volume: 50 GB

4. SSH Keys:
   - "Generate SSH key pair" bosing
   - Private key'ni saqlang

5. "Create" bosing

## 3. Instance'ga Ulanish

```bash
ssh -i private_key.pem ubuntu@PUBLIC_IP
```

## 4. Bot O'rnatish

```bash
# Update system
sudo apt update && sudo apt upgrade -y

# Install Python
sudo apt install python3 python3-pip git -y

# Clone repository
git clone https://github.com/maxmudovamuhlisa19-sys/sardor-converter-bot.git
cd sardor-converter-bot

# Install dependencies
pip3 install -r requirements.txt

# Test bot
python3 bot.py
```

## 5. Systemd Service (24/7 ishlashi uchun)

```bash
sudo nano /etc/systemd/system/sardor-bot.service
```

Quyidagini kiriting:

```ini
[Unit]
Description=Sardor Converter Bot
After=network.target

[Service]
Type=simple
User=ubuntu
WorkingDirectory=/home/ubuntu/sardor-converter-bot
ExecStart=/usr/bin/python3 /home/ubuntu/sardor-converter-bot/bot.py
Restart=always
RestartSec=10

[Install]
WantedBy=multi-user.target
```

Saqlang va yoping (Ctrl+X, Y, Enter)

```bash
# Enable va start service
sudo systemctl daemon-reload
sudo systemctl enable sardor-bot
sudo systemctl start sardor-bot

# Status tekshirish
sudo systemctl status sardor-bot

# Loglarni ko'rish
sudo journalctl -u sardor-bot -f
```

## 6. Tayyor!

Bot endi 24/7 ishlaydi va abadiy bepul!

## Foydali Buyruqlar

```bash
# Bot statusini ko'rish
sudo systemctl status sardor-bot

# Botni to'xtatish
sudo systemctl stop sardor-bot

# Botni qayta ishga tushirish
sudo systemctl restart sardor-bot

# Loglar
sudo journalctl -u sardor-bot -f

# Yangilanishlarni olish
cd /home/ubuntu/sardor-converter-bot
git pull
sudo systemctl restart sardor-bot
```

## Xavfsizlik

Firewall sozlash:
```bash
sudo ufw allow 22/tcp
sudo ufw enable
```

## Muammolar

Agar bot ishlamasa:
```bash
# Loglarni tekshiring
sudo journalctl -u sardor-bot -n 50

# Qo'lda ishga tushiring
cd /home/ubuntu/sardor-converter-bot
python3 bot.py
```
