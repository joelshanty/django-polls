#!/bin/bash

source venv/bin/activate
echo '-------------  checking for any problems  ------------'
python3 manage.py check || exit 1
wait
echo '-------------  applying migrations  ------------'
python3 manage.py makemigrations
wait
python3 manage.py migrate
wait
echo '-------------  starting server  ------------'
python3 manage.py runserver