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
                    header("Location: php/menucoordinadora.php");
                    exit;
                    break;
                case 'directora':
                    header("Location: php/menudirectora.php");
                    exit;
                    break;
                case 'coordinadora de cobranza':  // Usa 'cobrador' en lugar de 'cobrania' para consistencia
                    header("Location: php/menucobranza.php");
                    exit;
                    break;
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

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bienvenido al Control de Acceso de Estudiantes</title>
    <link rel="icon" href="../img/logo-utc-v01.svg">
    <link rel="stylesheet" href="../css/style.css">
</head>
<body>
<div class="container">
    <header>
        <h1>Bienvenido al Control de Acceso de Estudiantes</h1>
    </header>
    <main>
        <div class="welcome-message">
            <p>Por favor, ingresa tus credenciales para acceder al sistema.</p>
        </div>
        <form action="login.php" method="POST">
            <div class="form-group">
                <label for="username">Usuario:</label>
                <input type="text" id="username" name="username" required>
            </div>
            <div class="form-group">
                <label for="password">Contraseña:</label>
                <input type="password" id="password" name="password" required>j
            </div>
            <button type="submit" class="login-button">Ingresar</button>
        </form>                                                                                                                                                                      nnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnn                                                                                                                                                                                                                                       
        <div class="register-link">
            <p>¿No tienes una cuenta? <a href="../registro.html">Regístrate aquí</a></p>
        </div>
    </main>
    <footer>
        <p>&copy; 2024 Universidad Tres Culturas. Todos los derechos reservados.</p>
    </footer>
</div>
</body>
</html>