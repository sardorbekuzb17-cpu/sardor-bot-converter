python3 -m venv ~/bot_env
source ~/bot_env/bin/activate
git clone https://github.com/sardorbekuzb17-cpu/sardor-bot-converter.git bot
cd bot
pip install -r requirements.txt
nohup python3 bot.py > bot.log 2>&1 &
sleep 2
ps aux | grep bot.py
