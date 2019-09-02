FROM php:apache

RUN curl -L https://github.com/PrivateBin/PrivateBin/archive/master.zip > /var/www/master.zip && \
    apt-get update && \
    apt-get install -y unzip zlib1g-dev libpng-dev && \
    docker-php-ext-install gd && \
    cd /var/www && \
    unzip -q master.zip && \
    rmdir html && \
    mv PrivateBin-master html && \
    mv html/.htaccess.disabled html/.htaccess && \
    a2enmod rewrite && \
    rm -rf master.zip 
RUN chmod 777 -R /var/www/html/

