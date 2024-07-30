<?php
session_start();
include 'config.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $username = $_POST['username'];
    $password = $_POST['password'];

    // Consulta SQL para validar las credenciales del usuario
    $sql = "SELECT id, username, password_hash, rol FROM usuarios WHERE username = ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("s", $username);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows > 0) {
        $row = $result->fetch_assoc();
        if (password_verify($password, $row['password_hash'])) {
            // Guardar el rol del usuario en la sesión
            $_SESSION['userid'] = $row['id'];
            $_SESSION['username'] = $row['username'];
            $_SESSION['rol'] = $row['rol'];

            // Redireccionar según el rol del usuario
            switch ($row['rol']) {
                case 'coordinadora de cobranza':
                    header("Location: cobranza_dashboard.php");
                    break;
                case 'coordinadora academica':
                    header("Location: academica_dashboard.php");
                    break;
                case 'directora':
                    header("Location: directora_dashboard.php");
                    break;
                default:
                    echo "Rol no reconocido.";
            }
        } else {
            echo "Contraseña incorrecta.";
        }
    } else {
        echo "Usuario no encontrado.";
    }

    $stmt->close();
    $conn->close();
}
?>
