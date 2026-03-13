# Use a imagem oficial do PGP com Apach
FROM php:8.2-apache

#copie os arquivos da sua aplicação apra o diretório padrão do Apache
COPY . /var/www/html/

#Habilit módulos adicionais do Apache (opcional)
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Exponha a porta padrão do Apache
EXPOSE 80
