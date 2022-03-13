FROM nginx:alpine
RUN apk update
RUN apk add apache2
ADD . /usr/share/nginx/html/
ENTRYPOINT [sleep]
ENV name Awesome
