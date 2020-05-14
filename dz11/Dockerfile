FROM alpine:3.11.6
MAINTAINER Alexey Informer <smelikovav@gmail.com>
RUN apk upgrade -l && apk add nginx curl -l && \
mkdir -p /run/nginx && \
mkdir -p /opt/www && \
echo "daemon off;" >> /etc/nginx/nginx.conf
COPY default.conf /etc/nginx/conf.d
COPY index.html /opt/www
RUN chown nginx:nginx -R /opt/www/
EXPOSE 80
CMD ["nginx"]