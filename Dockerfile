FROM php:8.2-cli-alpine
COPY . /var/www/html
WORKDIR /var/www/html
EXPOSE 6002
CMD ["php", "-S", "0.0.0.0:6002", "-t", "/var/www/html"]