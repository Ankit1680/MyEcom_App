#!/bin/bash

echo "BUILD START"

# Install required Python packages
python3.9 -m pip install --upgrade pip
python3.9 -m pip install -r requirements.txt

# Run Django collectstatic command to gather static files
python3.9 manage.py collectstatic --noinput --clear

# Ensure static files are moved to the output directory Vercel expects
mkdir -p staticfiles_build
mv static/* staticfiles_build/

echo "BUILD END"
