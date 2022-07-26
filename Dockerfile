FROM php:7.2-apache
RUN chown -R www-data:www-data /var/www
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli
COPY webapp /var/www/html
CMD ["apache2-foreground"]
