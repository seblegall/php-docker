FROM debian:jessie
MAINTAINER Sébastien Le Gall <seb@le-gall.net>

RUN apt-get update && apt-get install -y \
    apt-transport-https \
    apt-utils \
    curl \
    wget \
    ca-certificates

RUN apt-get update && apt-get install -y \
    imagemagick \
    php5-cli \
    php5-fpm \
    php5-dev \
    php-pear \
    php5-curl \
    php5-gd \
    php5-imagick \
    php5-intl \
    php5-mcrypt \
    php5-sqlite \
    php5-xsl \
    php5-sqlite \
    php5-mysql \
    php5-pgsql \
    php5-redis \
    php5-xdebug

RUN apt-get update && apt-get install -y \
    zip \
    build-essential \
    acl \
    less \
    git \
    sudo

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer && \
    curl -sS https://phar.phpunit.de/phpunit.phar -k -o /usr/local/bin/phpunit && \
    chmod 755 /usr/local/bin/phpunit && \
    wget -q http://get.sensiolabs.org/php-cs-fixer.phar -O /usr/local/bin/php-cs-fixer && \
    chmod a+x /usr/local/bin/php-cs-fixer

RUN echo "Europe/Paris" > /etc/timezone && dpkg-reconfigure -f noninteractive tzdata

COPY config/cli/php.ini /etc/php5/cli/php.ini
COPY config/xdebug.sh /root/xdebug.sh
RUN bash /root/xdebug.sh

RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

RUN mkdir -p /root/.ssh
COPY config/ssh_config /root/.ssh/config

COPY docker-entrypoint.sh /entrypoint.sh
RUN chmod a+x /entrypoint.sh && chown root:root /entrypoint.sh

COPY config/fpm/php.ini /etc/php5/fpm/php.ini
COPY config/fpm/pool.d/* /etc/php5/fpm/pool.d/

VOLUME /srv
WORKDIR /srv

EXPOSE 9000
ENTRYPOINT ["/entrypoint.sh"]

CMD ["/usr/sbin/php-fpm", "-F"]
#CMD ["/usr/sbin/php5"]
