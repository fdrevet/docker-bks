FROM maxleiko/armhf-alpine-java

ENV BCPROV_VERSION 156
ENV BCPROV_JAR http://www.bouncycastle.org/download/bcprov-jdk15on-${BCPROV_VERSION}.jar

RUN apk add --update openssl && rm -rf /var/cache/apk/*

ADD ${BCPROV_JAR} /src/bcprov.jar
ADD docker-entrypoint.sh /

VOLUME ["/etc/openssl"]

ENV CERT_FILE cert.pem
ENV BKS_FILE cert.bks

ENTRYPOINT /docker-entrypoint.sh
