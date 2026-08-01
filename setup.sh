#!/bin/bash

echo '--------------------  creating venv  --------------------'
rm -rf venv
python3 -m venv venv
wait
echo '-------------  install project requirements  ------------'
source venv/bin/activate && pip install -r requirements.txt
wait