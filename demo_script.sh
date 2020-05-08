#!/bin/sh

mkdir djangofolder_demoscript
cd djangofolder_demoscript
echo "-----------Created the new folder----------"
git clone https://github.com/AishwaryaGhatge811/Library-Management-System-Application.git
cd Library-Management-System-Application
echo "-----installing all the dependenices----------"
pip install -r requirements.txt
echo "------then go to folder where my folder is present---------"
ls
cd Main_Project
echo "----------------creating the virtual env-------------"
virtualenv venv 
virtualenv --python=/usr/bin/python3.6 venv
source venv/bin/activate
pip install django
echo "----------created the virtual evn----------------"
export LD_LIBRARY_PATH="/usr/local/lib"
echo "-------now running the application---------"
python3 manage.py runserver 10.95.219.191:8000 
