FROM alpine:3.11.6
RUN apk upgrade -l && apk add nginx curl -l
RUN mkdir -p /run/nginx
RUN mkdir -p /opt/www 
RUN echo "daemon off;" >> /etc/nginx/nginx.conf
COPY default.conf /etc/nginx/conf.d
COPY index.html /opt/www
RUN chown nginx:nginx -R /opt/www/
EXPOSE 80
CMD ["nginx"]