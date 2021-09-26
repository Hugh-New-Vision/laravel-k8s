FROM php:7.4-fpm AS api

# Install system dependencies
RUN apt-get update && apt-get install -y \
    git \
    curl \
    libpng-dev \
    libonig-dev \
    libxml2-dev \
    zip \
    unzip \
    libpq-dev \
    vim

# Clear cache
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# Install PHP extensions
RUN docker-php-ext-install pdo pdo_pgsql mbstring exif pcntl bcmath gd

# Set working directory
WORKDIR /var/www/html

# Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer
COPY ./composer.lock ./composer.json ./
RUN composer install --prefer-dist --no-ansi --no-dev --no-autoloader

# Add user for laravel application
RUN groupadd -g 1000 example
RUN useradd -u 1000 -ms /bin/bash -g example example

COPY --chown=example:example ./ ./

# Change current user to www
USER example

RUN composer dump-autoload -o
