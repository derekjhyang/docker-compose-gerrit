all: build
build:
	sudo mkdir -p /etc/mysql
	sudo touch /etc/mysql/mysql_docker.env
	sudo mkdir -p /etc/openldap
	sudo touch /etc/openldap/openldap_docker.env
.PHONY: build
