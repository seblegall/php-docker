# php-docker

A basic docker container running PHP 7.0 or PHP 5.6.

This container should be useful when running simple php script.

## Requirements

* docker >= 1.7 [Docker Installation](https://gist.github.com/seblegall/13a663ff73c718b4a58a4cc454fc786c)


## Automatic Build

This container is automatically build with hub.docker.com on git push.

[Docker Hub Repo](https://hub.docker.com/r/seblegall/php-docker/)

## Usage

Pull container :

```sh
docker pull seblegall/php-docker
```
Run PHP :

```sh
docker run -it --rm seblegall/php-docker php -v
```
will output :

```sh
PHP 7.0.6-1~dotdeb+8.1 (cli) ( NTS )
Copyright (c) 1997-2016 The PHP Group
Zend Engine v3.0.0, Copyright (c) 1998-2016 Zend Technologies
    with Zend OPcache v7.0.6-dev, Copyright (c) 1999-2016, by Zend Technologies
    with Xdebug v2.4.0, Copyright (c) 2002-2016, by Derick Rethans
```

## Features
Depending on tag you use (e.g. 7.0 or 5.6), this container contains useful tools and PHP extensions.

### Tools
* curl
* wget
* ca-certificates
* composer

### PHP extensions
* imagemagick
* php7.0-cli
* php7.0-fpm
* php7.0-dev
* php7.0-curl
* php7.0-gd
* php7.0-imagick
* php7.0-intl
* php7.0-mcrypt
* php7.0-sqlite
* php7.0-xsl
* php7.0-xdebug
* php7.0-mysql
* php7.0-pgsql
* php7.0-redis
* php7.0-xdebug

## Building

To build the container (replace _<tag>_ by the new container tag e.g. : 5.6):

```sh
docker build -t seblegall/php-docker:<tag> <php_version>/
```

To push the container on hub.docker.com

```sh
docker push seblegall/php-docker:<tag>
```
