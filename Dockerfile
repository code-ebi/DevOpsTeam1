FROM nginx:alpine
RUN apk update
RUN apk add apache2
ADD . /usr/share/nginx/html/
CMD ["nginx", "-g", "daemon off;"]
ENV name Awesome
EXPOSE 80
