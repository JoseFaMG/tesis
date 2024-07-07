
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Menú</title>
    <link rel="icon" href="../img/logo-utc-v01.svg">
    <link rel="stylesheet" href="../css/menustyles.css">
</head>
<body>
<?php
session_start();
if (!isset($_SESSION['user'])) {
    header('Location: php/login.php');
    exit();
}
?>
<div class="menu-bar">
    <span class="welcome-message">Bienvenid@, <?php echo $_SESSION['user']; ?></span>
    <button class="logout-button" onclick="location.href='logout.php'">Cerrar Sesión</button>
</div>
<div class="menu-container">
    <h1>Menú Principal</h1>
    <div class="menu-buttons">
        <button onclick="location.href='../directora/crudalumnos/alumnos.php'">
            <img src="../img/estudiantes.png" alt="Gestión de Alumnos">
            Gestión de Alumnos
        </button>
        <button onclick="location.href='../directora/crudadmnistrativos/usuarios.php'">
            <img src="../img/gerente.png" alt="Gestión de Administrativos">
            Gestión de Administrativos
        </button>
    </div>
</div>
</body>
</html>
