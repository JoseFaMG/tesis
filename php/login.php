<?php
session_start();

// Reemplaza con las credenciales de tu base de datos
$servername = "localhost";
$username = "root";
$password = "2017452071";
$dbname = "controldeacceso";

// Crear conexión con la base de datos
$conn = new mysqli($servername, $username, $password, $dbname);

// Verificar conexión exitosa
if ($conn->connect_error) {
    die("Conexión fallida: " . $conn->connect_error);
}

// Procesar el formulario de inicio de sesión
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $usuario = $_POST['username'];
    $contrasena = $_POST['password'];

    // Preparar consulta para buscar usuario por nombre de usuario
    $sql = "SELECT * FROM usuarios WHERE username = ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("s", $usuario);
    $stmt->execute();
    $resultado = $stmt->get_result();

    // Si se encuentra el usuario
    if ($resultado->num_rows > 0) {
        $fila = $resultado->fetch_assoc();

        // Verificar contraseña mediante `password_verify`
        if (password_verify($contrasena, $fila['password_hash'])) {
            $_SESSION['usuario'] = $fila['username'];

            // Obtener rol del usuario
            $_SESSION['rol'] = $fila['rol']; // Suponiendo que existe un campo 'rol' en la tabla 'usuarios'

            // Redireccionar según el rol con mensajes adecuados (en español)
            switch ($_SESSION['rol']) {
                case 'coordinadora academica':
                    header("Location: menucoordinadora.php");
                    exit;
                case 'directora':
                    header("Location: menudirectora.php");
                    exit;
                case 'coordinadora de cobranza':  // Usa 'cobrador' en lugar de 'cobrania' para consistencia
                    header("Location: menucobranza.php");
                    exit;
                default:
                    echo "Error: Rol no reconocido."; // Manejar roles inesperados
                    break;
            }
        } else {
            echo "Contraseña incorrecta.";
        }
    } else {
        echo "Usuario no encontrado.";
    }

    $stmt->close();
}

$conn->close();
?>
