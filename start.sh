if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/hero890/file_share /file_share
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /file_share
fi
cd /file_share
pip3 install -U -r requirements.txt
echo "Bot Started...."
python3 bot.py
