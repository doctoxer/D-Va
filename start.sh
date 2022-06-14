if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/doctoxer/Dva_Official.git /Dva_Official
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Dva_Official
fi
cd /Dva_Official
pip3 install -U -r requirements.txt
echo "Starting DVa....🔥"
python3 bot.py
