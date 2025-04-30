#!/bin/bash

echo "Current directory contents: $(ls -la)"

echo "collect static"
python manage.py collectstatic --noinput || exit 1

echo "applu migrations"
python manage.py migrate || exit 1

echo "run server on 0.0.0.0:8000"
python manage.py runserver 0.0.0.0:8000