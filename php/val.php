<?php
session_start();
include 'config.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $username = $_POST['username'];
    $password = $_POST['password'];
    $rol = $_POST['rol'];

    // Consulta SQL para validar las credenciales del usuario
    $sql = "SELECT id, username, password_hash, rol FROM usuarios WHERE username = ? AND rol = ?";
    $stmt = $conn->prepare($sql);
    if ($stmt === false) {
        echo '<script>alert("Error en la preparación de la consulta: ' . htmlspecialchars($conn->error) . '");</script>';
        die();
    }
    $stmt->bind_param("ss", $username, $rol);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows > 0) {
        $row = $result->fetch_assoc();
        if (password_verify($password, $row['password_hash'])) {
            // Guardar la información del usuario en la sesión
            $_SESSION['userid'] = $row['id'];
            $_SESSION['username'] = $row['username'];
            $_SESSION['rol'] = $row['rol'];

            // Redireccionar según el rol del usuario
            switch ($row['rol']) {
                case 'cobranza':
                    echo '<script>alert("Redirigiendo a cobranzas.php");</script>';
                    header("Location: cobranzas.php");
                    exit();
                case 'coordinadora':
                    echo '<script>alert("Redirigiendo a academicas.php");</script>';
                    header("Location: academicas.php");
                    exit();
                case 'directora':
                    echo '<script>alert("Redirigiendo a directoras.php");</script>';
                    header("Location: directoras.php");
                    exit();
                default:
                    echo '<script>alert("Rol no reconocido.");</script>';
                    exit();
            }
        } else {
            echo '<script>alert("Contraseña incorrecta.");</script>';
        }
    } else {
        echo '<script>alert("Usuario no encontrado o rol incorrecto.");</script>';
    }

    $stmt->close();
    $conn->close();
}
?>
