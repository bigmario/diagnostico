# Utiliza la imagen oficial de PHP 8.1 como imagen base
FROM php:8.1-cli

# Instala las dependencias del sistema necesarias y las extensiones de PHP
RUN apt-get update && apt-get install -y \
    unixodbc-dev \
    gnupg \
    && pecl install sqlsrv pdo_sqlsrv \
    && docker-php-ext-enable sqlsrv pdo_sqlsrv

# Instala el Controlador ODBC de Microsoft para SQL Server
RUN curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add -
RUN curl https://packages.microsoft.com/config/debian/10/prod.list > /etc/apt/sources.list.d/mssql-release.list
RUN apt-get update && ACCEPT_EULA=Y apt-get install -y msodbcsql18

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /var/www/html

# Copia el script de prueba de conexión PHP al contenedor
COPY connn_test.php /var/www/html/

# Inicia el servidor PHP integrado cuando se ejecute el contenedor
CMD ["php", "-S", "0.0.0.0:80"]
