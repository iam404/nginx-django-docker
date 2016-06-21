# nginx-django-docker
Sample Django App with Dockerfile.

docker build -t sample/django .

docker run -d --name sample-django-nginx sample/django
