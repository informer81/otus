FROM alpine:latest
RUN  apk upgrade -l && apk add nginx -l
RUN echo "daemon off;" >> /etc/nginx/nginx.conf

EXPOSE 80
CMD [ "nginx" ]