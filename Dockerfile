FROM amazonlinux:2023.3.20240108.0
MAINTAINER DeBeAndo

ENV VERSION 2.4.8-1

ADD proxysql.repo /etc/yum.repos.d/proxysql.repo

RUN yum install -y proxysql-${VERSION}

COPY proxysql.cnf /etc/proxysql.cnf

ENTRYPOINT ["proxysql", "-f", "-c", "/etc/proxysql.cnf"]
