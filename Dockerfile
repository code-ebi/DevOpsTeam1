FROM nginx:alpine
RUN apk update
RUN apk add apache2
ADD . /usr/share/nginx/html/
ENTRYPOINT apachectl -D FOREGROUND
ENV name Awesome
CMD ["sleep","5"]
