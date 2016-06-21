FROM ubuntu:16.04
MAINTAINER Prabuddha Chakraborty <prabuddha.nike13@gmail.com>


RUN (apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y build-essential git python python-dev python-setuptools nginx)
RUN (easy_install pip && pip install uwsgi && pip install django)

ADD . /src/

RUN ln -s /src/nginx.conf /etc/nginx/sites-enabled/docker.conf
RUN rm /etc/nginx/sites-enabled/default

RUN chown -R www-data: /src


EXPOSE 80 443 8080

WORKDIR /src

RUN chmod +x bin/run.sh

#CMD ["nginx", "-g", "daemon off; uwsgi --master --processes 4 --die-on-term --socket :8080 --wsgi-file /src/wsgi.py"]

ENTRYPOINT ["./bin/run.sh"]
