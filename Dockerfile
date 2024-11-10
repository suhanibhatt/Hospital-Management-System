# Use the official PHP image with Apache support
FROM php:8.0-apache

# Install the necessary PHP extensions (like MySQL support)
RUN docker-php-ext-install mysqli

# Copy your PHP application files to the Apache web server's document root
COPY . /var/www/html/

# Expose the default HTTP port
EXPOSE 80

# Start Apache in the foreground
CMD ["apache2-foreground"]
