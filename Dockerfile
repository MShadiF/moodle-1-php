FROM php:8.3.11-apache

WORKDIR ./server/moodle /var/www/html

COPY . .

RUN mv "$PHP_INI_DIR/php.ini-development" "$PHP_INI_DIR/php.ini"

USER www-data

