# nginx-django-docker
Sample Django App with Dockerfile.

#To build Image:

docker build -t sample/django .

#To run container with the same image created above:

docker run -d --name sample-django-nginx sample/django

#To check on browser go to URL 

# http://{container_ip}
