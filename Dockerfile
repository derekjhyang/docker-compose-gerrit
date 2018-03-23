FROM openfrontier/gerrit:latest
MAINTAINER hswayne77@gmail.com
ARG https_proxy=https://proxyserver:8080
ARG http_proxy=http://proxyserver:8080
ARG no_proxy=127.0.0.1
RUN apk update
RUN apk add --no-cache vim wget grep python mariadb-client py-pip findutils tcpdump
RUN apk upgrade
RUN wget https://repo1.maven.org/maven2/mysql/mysql-connector-java/5.1.21/mysql-connector-java-5.1.21.jar -P /var/gerrit/
COPY gerrit-entrypoint.sh /gerrit-entrypoint.sh
COPY gerrit-start.sh /gerrit-start.sh
RUN chmod +x /gerrit-entrypoint.sh
RUN chmod +x /gerrit-start.sh
WORKDIR /var/gerrit/review_site
