FROM arm32v6/nginx:alpine

RUN apk upgrade --update-cache --available && \
    apk add openssl && \
    rm -rf /var/cache/apk/*

COPY configuration/fruitnanny_http /etc/nginx/conf.d/default.conf
COPY configuration/fruitnanny_https /etc/nginx/conf.d/default-ssl.conf
COPY passwd.sh /passwd.sh

#RUN sh /passwd.sh
#CMD ["/docker-entrypoint.sh"]


