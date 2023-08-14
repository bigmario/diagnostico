```bash
# sin instalar drivers (lineas 11-14 del Dockerfile)
Array
(
    [0] => Array
        (
            [0] => IMSSP
            [SQLSTATE] => IMSSP
            [1] => -49
            [code] => -49
            [2] => This extension requires the Microsoft ODBC Driver for SQL Server. Access the following URL to download the ODBC Driver for SQL Server for x64: https://go.microsoft.com/fwlink/?LinkId=163712
            [message] => This extension requires the Microsoft ODBC Driver for SQL Server. Access the following URL to download the ODBC Driver for SQL Server for x64: https://go.microsoft.com/fwlink/?LinkId=163712
        )

)
```

```bash
# Indicando la base de datos en el script de coneccion (al no haber una base de datos creada, no hay con quien conectarse)
Array
(
    [0] => Array
        (
            [0] => 42000
            [SQLSTATE] => 42000
            [1] => 4060
            [code] => 4060
            [2] => [Microsoft][ODBC Driver 17 for SQL Server][SQL Server]Cannot open database "basededatos" requested by the login. The login failed.
            [message] => [Microsoft][ODBC Driver 17 for SQL Server][SQL Server]Cannot open database "basededatos" requested by the login. The login failed.
        )

    [1] => Array
        (
            [0] => 28000
            [SQLSTATE] => 28000
            [1] => 18456
            [code] => 18456
            [2] => [Microsoft][ODBC Driver 17 for SQL Server][SQL Server]Login failed for user 'sa'.
            [message] => [Microsoft][ODBC Driver 17 for SQL Server][SQL Server]Login failed for user 'sa'.
        )

)
```


```bash
# La extensión GNUPG se usa para operaciones de cifrado y descifrado, y parece que el paquete con el que se está trabajando requiere que se instale esta extensión (linea 7 del Dockerfile).
 
gnupg, gnupg2 and gnupg1 do not seem to be installed, but one of them is required for this operation
```

```bash
# con msodbcsql17 conecta sin problema
# con msodbcsql18 devuelve el siguiente error
Array
(
    [0] => Array
        (
            [0] => 08001
            [SQLSTATE] => 08001
            [1] => -1
            [code] => -1
            [2] => [Microsoft][ODBC Driver 18 for SQL Server]SSL Provider: [error:0A000086:SSL routines::certificate verify failed:self-signed certificate]
            [message] => [Microsoft][ODBC Driver 18 for SQL Server]SSL Provider: [error:0A000086:SSL routines::certificate verify failed:self-signed certificate]
        )

    [1] => Array
        (
            [0] => 08001
            [SQLSTATE] => 08001
            [1] => -1
            [code] => -1
            [2] => [Microsoft][ODBC Driver 18 for SQL Server]Client unable to establish connection. For solutions related to encryption errors, see https://go.microsoft.com/fwlink/?linkid=2226722
            [message] => [Microsoft][ODBC Driver 18 for SQL Server]Client unable to establish connection. For solutions related to encryption errors, see https://go.microsoft.com/fwlink/?linkid=2226722
        )

)

```

