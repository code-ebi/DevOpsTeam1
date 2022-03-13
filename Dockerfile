FROM nginx:alpine
RUN apk update
Run apk -y install apache2
ADD . /usr/share/nginx/html/
ENTRYPOINT apachectl -D FOREGROUND
