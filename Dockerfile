FROM openfrontier/gerrit:latest
#ARG https_proxy=https://192.168.0.100:8080
#ARG http_proxy=http://182.168.0.100:8080
RUN apk update
RUN echo 'vim' >> /etc/apk/world
RUN echo 'python' >> /etc/apk/world
RUN echo 'wget' >> /etc/apk/world
RUN echo 'mariadb-client=10.1.19-r0' >> /etc/apk/world
RUN echo 'py-pip=8.1.2-r0' >> /etc/apk/world
RUN echo 'findutils=4.6.0-r0' >> /etc/apk/world
RUN apk add
RUN apk upgrade
RUN wget https://repo1.maven.org/maven2/mysql/mysql-connector-java/5.1.21/mysql-connector-java-5.1.21.jar -P /var/gerrit/
COPY gerrit-entrypoint.sh /gerrit-entrypoint.sh
COPY gerrit-start.sh /gerrit-start.sh
RUN chmod +x /gerrit-entrypoint.sh
RUN chmod +x /gerrit-start.sh
