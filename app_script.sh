#!/bin/sh
echo "----creating the folder for application-----"
DIR="/root/DjangoFolder"
if [ -d "$DIR" ]; then
  ### Take action if $DIR exists ###
  echo "Already exists  ${DIR}..."
else
  ###  Control will jump here if $DIR does NOT exists ###
  echo "Creating the folder."
            mkdir -p "$DIR"
fi
cd /root/DjangoFolder
ls

CLONE="/root/DjangoFolder/Library-Management-System-Application.git"
if [ ! -d "$CLONE" ];then
   echo "cloning the git repo"
   git clone https://github.com/AishwaryaGhatge811/Library-Management-System-Application.git
else
    echo "git pulling"
    cd Library-Management-System-Application
    git pull origin master
fi
echo "------Git cloning is completed-----."
cd Library-Management-System-Application
echo "----requirement.txt files-------"
pip install -r requirements.txt
cd Main_Project
ls
virtualenv venv
source venv/bin/activate
export LD_LIBRARY_PATH="/usr/local/lib"
echo "-----now running the application -----"
python manage.py migrate
python manage.py runserver 10.95.219.105:8000
