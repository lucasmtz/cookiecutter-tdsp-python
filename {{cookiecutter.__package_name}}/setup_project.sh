#!/bin/bash
# -----------------------------------------------------------------------------------------------------------------
# Update apt
# -----------------------------------------------------------------------------------------------------------------
sudo apt update -y

# -----------------------------------------------------------------------------------------------------------------
# Python venv and pip
# -----------------------------------------------------------------------------------------------------------------
sudo apt install -y python3-venv python3-pip python3-dev python3-wheel python3-testresources

# -----------------------------------------------------------------------------------------------------------------
# Install git
# -----------------------------------------------------------------------------------------------------------------
sudo apt install -y git git-flow

# -----------------------------------------------------------------------------------------------------------------
# Create virtual enviroment
# -----------------------------------------------------------------------------------------------------------------
echo -e "\nCreating virtual environment..."
rm -rf venv
python3 -m pip install --upgrade pip setuptools wheel build
python3 -m venv venv --upgrade-deps
chmod -R 777 venv/
source venv/bin/activate

# -----------------------------------------------------------------------------------------------------------------
# Start a git repository if it not exists and initialize git flow
# -----------------------------------------------------------------------------------------------------------------
if ! git status &>/dev/null; then
    echo -e "\nInitializing new git repository..."
    git init -b main
    git add .
    git commit -m "Create initial repository"
    echo -e "\nInitializing git flow..."
    git flow init -d -t 'v'
fi

# -----------------------------------------------------------------------------------------------------------------
# Install versioneer
# -----------------------------------------------------------------------------------------------------------------
echo -e "\nInstalling versioneer..."
pip3 install versioneer
if ! test -f "versioneer.py"; then
    echo -e "\nFinishing versioneer installation..."
    versioneer install
fi

# -----------------------------------------------------------------------------------------------------------------
# Install project in editable mode
# -----------------------------------------------------------------------------------------------------------------
echo -e "\nInstalling project in editable mode..."
pip3 install -e ".[dev]"

# -----------------------------------------------------------------------------------------------------------------
# Install pre-commit
# -----------------------------------------------------------------------------------------------------------------
echo -e "\nInstalling pre-commit..."
pre-commit install
pre-commit autoupdate

# -----------------------------------------------------------------------------------------------------------------
# Check versioneer
# -----------------------------------------------------------------------------------------------------------------
echo -e "\nChecking versioneer..."
python setup.py version

# -----------------------------------------------------------------------------------------------------------------
# Success message
# -----------------------------------------------------------------------------------------------------------------
echo -e "\nSUCCESS! {{cookiecutter.project_name}}[{{cookiecutter.__package_name}}] is ready to use."
