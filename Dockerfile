FROM drupal

# необходимые расширения php
RUN docker-php-ext-install pdo_mysql \
    && a2enmod rewrite

# установка сomposer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# открываем стандартный порт 80
EXPOSE 80