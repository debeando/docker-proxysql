# ProxySQL Docker Image

ProxySQL is a high performance, high availability, protocol aware proxy for MySQL and forks (like Percona Server and MariaDB). More details at [ProxySQL](http://www.proxysql.com) website.

## Image Description

This image is maintained by DeBeAndo and will be updated regularly on best-effort basis. The image is based on AmazonLinux 2023 and only contain ProxySQL package for AmazonLinux.

## Run

To run a ProxySQL container:

```bash
docker run --detach \
	--name proxysql \
	--publish 6032:6032 \
	--publish 3306:3306 \
	ghcr.io/debeando/docker-proxysql
```

To run a ProxySQL container with a custom ProxySQL configuration file:

```bash
docker run --detach \
	--name proxysql \
	--publish 6032:6032 \
	--publish 3306:3306 \
	--volume proxysql.cnf:/etc/proxysql.cnf \
	ghcr.io/debeando/docker-proxysql
```

To run a ProxySQL container in Mac with Apple Chip:

```bash
docker run --detach \
	--name proxysql \
	--platform linux/amd64 \
	--publish 6032:6032 \
	--publish 3306:3306 \
	ghcr.io/debeando/docker-proxysql
```
