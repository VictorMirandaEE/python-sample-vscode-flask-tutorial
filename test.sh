#!/bin/bash

echo "Running pytest inside the PTX from Azure Pipeline..."

cd /media/realroot/home/mms/python
pwd
python3 -m venv .venv
source .venv/bin/activate
python -m pip install --upgrade pip
pip install -r requirements.txt
pip install pytest pytest-azurepipelines
pytest -v
