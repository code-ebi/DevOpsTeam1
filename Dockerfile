FROM nginx:alpine
RUN apk update
Run apk install apache2
ADD . /usr/share/nginx/html/
ENTRYPOINT apachectl -D FOREGROUND
