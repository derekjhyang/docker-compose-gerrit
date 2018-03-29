FROM ubuntu:16.04

ENV GERRIT_HOME /var/gerrit
ENV GERRIT_SITE ${GERRIT_HOME}/review_site
ENV GERRIT_VERSION 2.14.7
ENV GERRIT_WAR ${GERRIT_HOME}/gerrit-${GERRIT_VERSION}.war
ENV GERRIT_USER gerrit
ENV GERRIT_INIT_ARGS ""
ENV JAVA_HOME /usr/lib/jvm/open-jdk

RUN mkdir ${GERRIT_HOME}

# Allow remote connectivity and sudo
RUN apt-get update
RUN apt-get -y install openssh-client sudo curl default-jdk git python-pip python-dev

RUN set -x && curl -fsSL https://gerrit-releases.storage.googleapis.com/gerrit-${GERRIT_VERSION}.war -o ${GERRIT_WAR}

RUN echo "JAVA_HOME='/usr/lib/jvm/open-jdk'" >> /etc/environment

RUN java -jar ${GERRIT_WAR}  init --batch --install-all-plugins -d ${GERRIT_HOME}

COPY etc/ ${GERRIT_HOME}/etc/
# Allow incoming traffic
EXPOSE 29418 8080

VOLUME ["/var/gerrit/git", "/var/gerrit/index", "/var/gerrit/cache", "/var/gerrit/db", "/var/gerrit/etc"]

# Start Gerrit
CMD /var/gerrit/bin/gerrit.sh start && tail -f /var/gerrit/logs/error_log
