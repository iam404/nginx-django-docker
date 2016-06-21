#!/bin/sh

service nginx start && uwsgi --master --processes 4 --die-on-term --socket :8080 --wsgi-file /src/wsgi.py
