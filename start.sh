if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/spidyynaik/DQ-Work.git /DQ-_TOM
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /DQ-_TOM
fi
cd /DQ-_TOM
pip3 install -U -r requirements.txt
echo "Starting DQ-_TOM...."
python3 bot.py
