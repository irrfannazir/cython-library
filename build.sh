#!/bin/bash

# Exit on error
set -e

# Create virtual environment if it doesn't exist
if [ ! -d "env" ]; then
    echo "Creating virtual environment..."
    python3 -m venv env
fi

# Activate virtual environment
source env/bin/activate

# Install Cython if not installed
pip show cython > /dev/null 2>&1 || pip install cython

# Change to the directory containing setup.py
cd collection

# Build the extension in-place
python setup.py build_ext --inplace

echo "Build completed!"
