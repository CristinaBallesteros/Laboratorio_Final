<?php
// Conexión a la base de datos
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "cursosql";

$conn = new mysqli($servername, $username, $password, $dbname);

// Verificar la conexión
if ($conn->connect_error) {
    die("Conexión fallida: " . $conn->connect_error);
}

// Consulta para obtener los usuarios registrados
$sql = "SELECT * FROM usuarios";
$result = $conn->query($sql);

// Mostrar la lista de usuarios registrados
if ($result->num_rows > 0) {
    echo "<h2>Usuarios Registrados:</h2>";
    echo "<ul>";
    while ($row = $result->fetch_assoc()) {
        echo "<li>" . $row['nombre'] . " " . $row['apellido1'] . " " . $row['apellido2'] . " - " . $row['email'] . "</li>";
    }
    echo "</ul>";
} else {
    echo "No se encontraron usuarios registrados.";
}

// Cerrar la conexión a la base de datos
$conn->close();
?>