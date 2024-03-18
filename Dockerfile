FROM ubuntu/apache2

RUN apt-get update 

COPY . /var/www/html/

