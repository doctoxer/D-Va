if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/doctoxer/D-Va.git /D-Va
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /D-Va
fi
cd /D-Va
pip3 install -U -r requirements.txt
echo "Starting DVa....🔥"
python3 bot.py
