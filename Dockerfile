# TODO consider alpine 
FROM php:5.6-apache

ENV APT_DEPS \
              libcurl4-gnutls-dev \
              php5-curl \
              php5-json \
              php5-mcrypt \
              php5-mysql

RUN apt-get update && apt-get install -y $APT_DEPS

RUN sh -c 'echo "extension=dio.so" > /etc/php5/apache2/conf.d/20-dio.ini'
RUN sh -c 'echo "extension=dio.so" > /etc/php5/cli/conf.d/20-dio.ini'
RUN sh -c 'echo "extension=redis.so" > /etc/php5/apache2/conf.d/20-redis.ini'
RUN sh -c 'echo "extension=redis.so" > /etc/php5/cli/conf.d/20-redis.ini'

RUN a2enmod rewrite



 

ADD . /var/www/html/emoncms

WORKDIR /var/www/html/emoncms
RUN cp docker.settings.php settings.php

# TODO
# - dio
# - Swiftmailer