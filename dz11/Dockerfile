FROM alpine:latest
RUN  apk upgrade -l && apk add nginx -l
RUN echo "daemon off;" >> /etc/nginx/nginx.conf
COPY index.html /var/www
EXPOSE 80 443
CMD ["nginx"]