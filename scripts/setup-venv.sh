#!/bin/bash
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
cd $SCRIPT_DIR/..

VENV="venv"
python3 -m venv $VENV
source $VENV/bin/activate

pip install --upgrade pip setuptools
pip install -r requirements.txt
