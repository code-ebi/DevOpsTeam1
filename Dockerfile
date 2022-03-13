FROM nginx:alpine
RUN apt-get update
Run apt-get -y install apache2
ADD . /usr/share/nginx/html/
ENTRYPOINT apachectl -D FOREGROUND
