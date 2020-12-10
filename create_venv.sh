#!/bin/bash

# define path to your project's directory
PROJECT_DIR=~/projeto

# a directory with virtual environment
# will be created in your Project1 directory
# it recommended to add this path into your .gitignore
VENV_DIR="${PROJECT_DIR}"/venv

# https://docs.python.org/3/library/venv.html
python -m virtualenv "${VENV_DIR}"

# activates the newly created virtual environment
#. "${VENV_DIR}"/bin/activate # ubuntu
source "${VENV_DIR}"/bin/activate # centos7

# prints activated version of Python
python -V

pip install --upgrade pip

# Write here all Python libraries which you want to install over pip
# An example or requirements.txt see here:
# https://docs.python.org/3/tutorial/venv.html#managing-packages-with-pip
pip install -r "${PROJECT_DIR}"/requirements.txt

pip freeze

echo "Virtual environment ${VENV_DIR} has been created"

deactivate