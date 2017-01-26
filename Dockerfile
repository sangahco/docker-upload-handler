FROM nginx:alpine

#COPY . /etc/nginx/
COPY . /setup

VOLUME /etc/nginx/www
VOLUME /tmp

EXPOSE "8180"

COPY docker-entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]