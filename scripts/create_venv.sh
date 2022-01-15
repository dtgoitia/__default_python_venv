#!/usr/bin/env bash

python_version="3.10.0"
python_bin_path="${HOME}/.pyenv/versions/${python_version}/bin/python"
venv_dir="./.venv"

echo "Creating virtual environment for Python ${python_version} ..."
if [ -d "$venv_dir" ]; then
    absolute_dir="$(realpath $venv_dir)"
    echo "ERROR: virtual environment already exists at $absolute_dir"
    echo "Aborting..."
    exit 1
fi
$python_bin_path -m venv $venv_dir

echo "Activating virtual environment..."
. "${venv_dir}/bin/activate"

echo "Installing dependencies..."
./scripts/upgrade_all_pip_dependencies.sh

echo "Done!"
