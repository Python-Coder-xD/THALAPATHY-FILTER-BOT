if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Python-Coder-xD/THALAPATHY-FILTER-BOT /THALAPATHY-FILTER-BOT 
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /THALAPATHY-FILTER-BOT 
if
cd /THALAPATHY-FILTER-BOT 
pip3 install -U -r requirements.txt
COPY start.sh /start.sh
CMD ["/bin/bash", "/start.sh"]

echo "Starting Bot...."
python3 bot.py
