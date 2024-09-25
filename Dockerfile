# Use the PHP runtime
FROM php:8.2-apache

# Install PHP extensions MySQL
RUN docker-php-ext-install mysqli

# Enable Apache mod_rewrite
RUN a2enmod rewrite

# Enable Apache mod_rewrite
RUN a2enmod rewrite

# Copy application files in the container
COPY . /var/www/html/

# Expose port 80 for wev server
EXPOSE 80

CMD ["apache2-foreground"]
