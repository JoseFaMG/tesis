<?php
include 'config.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $username = $_POST['username'];
    $password = $_POST['password'];
    $rol = $_POST['rol'];

    $sql = "SELECT id, username, password_hash, rol FROM usuarios WHERE username = ? AND rol = ?";
    $stmt = $conn->prepare($sql);
    if ($stmt === false) {
        $response['success'] = false;
        $response['message'] = 'Error en la preparación de la consulta: ' . htmlspecialchars($conn->error);
        echo json_encode($response);
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
                    $response['success'] = true;
                    $response['message'] = 'Redirigiendo a cobranzas';
                    $response['redirect'] = 'cobranzas.php';
                    break;
                case 'coordinadora':
                    $response['success'] = true;
                    $response['message'] = 'Redirigiendo a academicas';
                    $response['redirect'] = 'academicas.php';
                    break;
                case 'directora':
                    $response['success'] = true;
                    $response['message'] = 'Redirigiendo a directoras';
                    $response['redirect'] = 'directoras.php';
                    break;
                default:
                    $response['success'] = false;
                    $response['message'] = 'Rol no reconocido.';
                    break;
            }
        } else {
            $response['success'] = false;
            $response['message'] = 'Contraseña incorrecta.';
        }
    } else {
        $response['success'] = false;
        $response['message'] = 'Usuario no encontrado o rol incorrecto.';
    }

    $stmt->close();
    $conn->close();
} else {
    $response['success'] = false;
    $response['message'] = 'Método de solicitud no permitido.';
}

echo json_encode($response);
?>
