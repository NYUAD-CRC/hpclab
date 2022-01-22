#!/bin/bash
SCRIPTDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

ansible-galaxy install -r $SCRIPTDIR/../ansible-requirements.yml