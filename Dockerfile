# ./public_html/Dockerfile
FROM php:5.6-apache

# Habilita mod_rewrite para .htaccess funcionar
RUN a2enmod rewrite

# Copia os arquivos do site
COPY . /var/www/html/

# Define permissões (ajuste conforme seu caso)
RUN chown -R www-data:www-data /var/www/html

# Define o diretório padrão como raiz do site
WORKDIR /var/www/html
