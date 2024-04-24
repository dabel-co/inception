FROM alpine:3.18
RUN apk -U upgrade && apk add nginx openssl
RUN openssl req -x509 -newkey rsa:4096 -days 365 -nodes \
    -keyout /etc/ssl/private/mykey.pem \
    -out /etc/ssl/certs/mycert.pem -sha256 \
	-subj "/C=ES/ST=Madrid/L=Madrid/O=42/OU=student/CN=dabel-co"
COPY /conf/default.conf /etc/nginx/http.d/default.conf
COPY /tools/init.sh /etc/.
CMD ["sh", "/etc/init.sh"]