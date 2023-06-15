<?php
// Conexión BBDD
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "cursosql";

$conn = new mysqli($servername, $username, $password, $dbname);

// Verificar conexión
if ($conn->connect_error) {
    die("Conexión fallida: " . $conn->connect_error);
}

// Validar email
function validarEmail($email) {
    return filter_var($email, FILTER_VALIDATE_EMAIL);
}

// Obtener datos
$nombre = $_POST['nombre'];
$apellido1 = $_POST['apellido1'];
$apellido2 = $_POST['apellido2'];
$email = $_POST['email'];
$login = $_POST['login'];
$password = $_POST['password'];

// Validar campos
if (empty($nombre) || empty($apellido1) || empty($apellido2) || empty($email) || empty($login) || empty($password)) {
    echo "Por favor, complete todos los campos.";
    exit;
}

if (!validarEmail($email)) {
    echo "El correo ingresado no es válido. Por favor, introduzca un correo electrónico válido.";
    exit;
}

if (strlen($password) < 4 || strlen($password) > 8) {
    echo "La contraseña debe tener entre 4 y 8 caracteres.";
    exit;
}

// Verificar correo registrado
$sql = "SELECT * FROM usuarios WHERE email = '$email'";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    echo "El correo electrónico ya está registrado. Por favor, introduzca otro correo electrónico.";
    exit;
}

// Insertar datos en la BBDD
$sql = "INSERT INTO usuarios (nombre, apellido1, apellido2, email, login, password) VALUES ('$nombre', '$apellido1', '$apellido2', '$email', '$login', '$password')";

if ($conn->query($sql) === TRUE) {
    echo "El Registro se ha completado con éxito.";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

// Cerrar conexión
$conn->close();
?>