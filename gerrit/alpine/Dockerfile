FROM openfrontier/gerrit:latest 

MAINTAINER jhyang@cht.com.tw

#ARG https_proxy=https://10.160.3.88:8080
#ARG http_proxy=http://10.160.3.88:8080

RUN set -x \
    && apk add --update --no-cache git openssh openssh-client openssl bash perl perl-cgi git-gitweb curl su-exec procmail vim wget grep python mariadb-client py-pip findutils tcpdump
RUN apk upgrade


RUN wget https://repo1.maven.org/maven2/mysql/mysql-connector-java/5.1.21/mysql-connector-java-5.1.21.jar -P /var/gerrit/
#RUN set -x && ls ${GERRIT_WAR} && java -jar "${GERRIT_WAR}" init --batch --install-all-plugins -d "${GERRIT_SITE}" ${GERRIT_INIT_ARGS}

COPY gerrit-entrypoint.sh /gerrit-entrypoint.sh
COPY gerrit-start.sh /gerrit-start.sh
RUN chmod +x /gerrit-entrypoint.sh
RUN chmod +x /gerrit-start.sh
WORKDIR /var/gerrit/review_site

