#!/bin/bash
# --------------------------------------------------------------------------------------------------------------------
# Update apt
sudo apt update -y
# --------------------------------------------------------------------------------------------------------------------

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
echo
echo "Creating virtual environment..."
rm -rf venv
python3 -m pip install --upgrade pip setuptools wheel build
python3 -m venv venv --upgrade-deps
chmod -R 777 venv/
source venv/bin/activate

# -----------------------------------------------------------------------------------------------------------------
# Install versioneer
# -----------------------------------------------------------------------------------------------------------------
echo
echo "Installing versioneer..."
pip3 install versioneer

# -----------------------------------------------------------------------------------------------------------------
# Start a git repository if it not exists and install the project in editable mode
# -----------------------------------------------------------------------------------------------------------------
if ! git status &>/dev/null; then
    echo
    echo "Initializing new git repository..."
    git init -b main
    echo
    echo "Finishing versioneer installation..."
    versioneer install
    echo
    echo "Installing project in editable mode..."
    pip3 install -e ".[dev]"
    echo
    echo "Installing pre-commit and doing the first commit..."
    pre-commit install
    pre-commit autoupdate
    git add .
    pre-commit run --all-files
    git add .
    pre-commit run --all-files
    git add .
    pre-commit run --all-files
    git add .
    git commit -m "Initial commit"
    echo
    echo "Initializing git flow..."
    git flow init -d -t 'v'
else
    echo
    echo "Installing project in editable mode..."
    pip3 install -e ".[dev]"
fi

# -----------------------------------------------------------------------------------------------------------------
# Check versioneer
# -----------------------------------------------------------------------------------------------------------------
echo
python setup.py version

# -----------------------------------------------------------------------------------------------------------------
# Success message
# -----------------------------------------------------------------------------------------------------------------
echo
echo "SUCCESS! {{cookiecutter.project_name}} repository is ready to use."
