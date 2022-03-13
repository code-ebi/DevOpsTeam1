FROM httpd:alpine
RUN apk update
RUN apk add apache2
COPY ./html/ /usr/local/apache2/htdocs/

