FROM nginx:1.12-alpine

#COPY . /etc/nginx/
COPY . /setup

VOLUME /etc/nginx/www

EXPOSE "8180"

COPY docker-entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]