<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <link rel="stylesheet" href="../css/style.css">
    <link rel="icon" type="image/png" href="../img/logo.png">
</head>
<body>
    <div class="login-container">
        <img src="../img/logo.png" alt="Logo" class="login-logo">
        <h2>Iniciar Sesión</h2>
        <form id="loginForm" action="val.php" method="POST">
            <input type="text" name="username" id="username" placeholder="Usuario" required>
            <input type="password" name="password" id="password" placeholder="Contraseña" required>
            <button type="submit">Iniciar Sesión</button>
            <button type="button" id="registerButton">Registrarse</button>
        </form>
        <p id="error-message"></p>
    </div>
    <script>
        document.getElementById('loginForm').addEventListener('submit', function(event) {
            const username = document.getElementById('username').value;
            const password = document.getElementById('password').value;

            if (username === '' || password === '') {
                event.preventDefault();
                document.getElementById('error-message').textContent = 'Por favor, complete todos los campos.';
            }
        });

        document.getElementById('registerButton').addEventListener('click', function() {
            window.location.href = '../registro.html';
        });
    </script>
</body>
</html>
