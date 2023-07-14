FROM php:8.2.4-fpm-alpine

WORKDIR /var/www/html

COPY src .

RUN docker-php-ext-install pdo pdo_mysql

RUN addgroup -g 1000 laravel && adduser -G laravel laravel -s /bin/sr -D laravel

USER laravel

# CMD -> Não existe porque vai adotar o CMD padrão da imagem em hub utilizado no docker-compose