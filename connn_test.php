<?php
$serverName = "sqlserver"; // Este es el nombre del servicio en el docker-compose.yml
$connectionOptions = array(
    "Uid" => "sa",
    "PWD" => "YourStrong@Password"
);

// Establece la conexión
$conn = sqlsrv_connect($serverName, $connectionOptions);

if ($conn === false) {
    die(print_r(sqlsrv_errors(), true));
} else {
    echo "Conectado a SQL Server";

    // Test a query
    $query = "SELECT @@VERSION";
    $result = sqlsrv_query($conn, $query);

    if ($result === false) {
        die(print_r(sqlsrv_errors(), true));
    } else {
        while ($row = sqlsrv_fetch_array($result)) {
            echo "SQL Server version: " . $row[0] . "<br>";
        }
        sqlsrv_free_stmt($result);
    }
}

sqlsrv_close($conn);
?>
