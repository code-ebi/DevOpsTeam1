FROM ubuntu20.04
RUN apt-get update
RUN apt-get -y install apache2
ADD . /usr/share/nginx/html/
ENTRYPOINT apachectl -D FOREGROUND
ENV name Awesome
