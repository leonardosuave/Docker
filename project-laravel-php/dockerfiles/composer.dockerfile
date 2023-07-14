FROM composer:latest

RUN addgroup -g 1000 laravel && adduser -G laravel -g laravel -s /bin/sh -D laravel

USER laravel

WORKDIR /var/www/html

##--ignore... faz com que seja executado comandos sem avisos e erros mesmo que a dependencia esteja ausente.
ENTRYPOINT [ "composer", "--ignore-platform-reqs" ]