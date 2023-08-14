# Generate certificates for the PHP service
openssl req -newkey rsa:2048 -nodes -keyout php-key.pem -x509 -days 365 -out php-cert.pem

# Generate certificates for the SQL Server service
openssl req -newkey rsa:2048 -nodes -keyout sqlserver-key.pem -x509 -days 365 -out sqlserver-cert.pem
