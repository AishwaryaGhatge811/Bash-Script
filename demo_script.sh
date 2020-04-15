#!/bin/sh

mkdir djangofolder_demoscript
cd djangofolder_demoscript
echo "-----------Created the new folder----------"
git clone https://github.com/AishwaryaGhatge811/Django-App.git
cd Django-App
echo "-----installing all the dependenices----------"
pip install -r requirement.txt
echo "------then go to folder where my folder is present---------"
ls
cd assignment1
echo "----------------creating the virtual env-------------"
virtualenv venv 
source venv/bin/activate
pip install django
echo "----------created the virtual evn----------------"
export LD_LIBRARY_PATH="/usr/local/lib"
echo "-------now running the application---------"
python  manage.py runserver 10.95.219.191:8000 
