FROM jrei/systemd-ubuntu:18.04

ENV DEBIAN_FRONTEND noninteractive
RUN  apt-get update \
  && apt-get install -y wget \
  && rm -rf /var/lib/apt/lists/*
RUN apt-get update && apt-get -y install software-properties-common 
RUN add-apt-repository -y ppa:ondrej/php 
RUN apt-get update && apt-get -y install \
    apt-utils \ 
    curl \
    # Install git
    git \
    # Install apache
    # apache2 \
    # Install php 7.2
    libapache2-mod-php7.2 \
    php7.2 \
    php7.2-common \
    php7.2-dev \
    php7.2-cli \
    php7.2-json \
    php7.2-curl \
    php7.2-fpm \
    php7.2-gd \
    php7.2-xmlrpc \
    php7.2-ldap \
    php7.2-mbstring \
    php7.2-mysql \
    php7.2-soap \
    php7.2-sqlite3 \
    php7.2-xml \
    php7.2-zip \
    php7.2-intl \
    php7.2-imagick \
    # Install tools
    openssl \
    nano \
    graphicsmagick \
    imagemagick \
    ghostscript \
    mysql-client \
    iputils-ping \
    locales \
    sqlite3 \
    ca-certificates \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

RUN wget -c https://dev.mysql.com/get/mysql-apt-config_0.8.22-1_all.deb && dpkg -i mysql-apt-config_0.8.22-1_all.deb
RUN apt-get update && apt-get -y install mysql-server

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
# Install phalcon 

RUN apt-get update && apt-get -y install php7.2-phalcon3
RUN apt-get update && apt-get -y install php7.2-psr 


# Set locales
RUN locale-gen en_US.UTF-8 en_GB.UTF-8 de_DE.UTF-8 es_ES.UTF-8 fr_FR.UTF-8 it_IT.UTF-8 km_KH sv_SE.UTF-8 fi_FI.UTF-8


EXPOSE 80 443

WORKDIR /var/www/html

CMD apachectl -D FOREGROUND 