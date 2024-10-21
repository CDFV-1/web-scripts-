#!/bin/bash

# Update package list and install Python and pip
sudo apt-get update
sudo apt-get install -y python3 python3-pip

# Install virtualenv
pip3 install virtualenv

# Create and activate a virtual environment
virtualenv venv
source venv/bin/activate

# Install Django
pip install django

# Create a new Django project
django-admin startproject mysite

# Change to the project directory
cd mysite

# Create a new app
python manage.py startapp myapp

# Run migrations
python manage.py migrate

# Create a superuser (you'll be prompted for username and password)
python manage.py createsuperuser

# Start the development server
python manage.py runserver
