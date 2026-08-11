#!/bin/bash

source venv/bin/activate
echo '-------------  checking for any problems  ------------'
python3 manage.py check || exit 1
wait
echo '-------------  running tests  ------------'
python3 manage.py test