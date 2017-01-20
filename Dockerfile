FROM java:7

ENV BCPROV_VERSION 156
ENV BCPROV_JAR http://www.bouncycastle.org/download/bcprov-jdk15on-${BCPROV_VERSION}.jar

ADD ${BCPROV_JAR} /src/bcprov.jar
ADD docker-entrypoint.sh /

ENTRYPOINT /docker-entrypoint.sh
