<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
</head>
<body>
    <h1>Autenticación</h1>
    <form action="login.php" method='post'>
        <input type="text" name="usuario" placeholder="Usuario">
        <input type="password" name="contra">
        <input type="submit" value="Login">
    </form>
    <?php
        if(isset($_POST["usuario"]) && isset($_POST["contra"])){
            $usuario = htmlspecialchars($_POST["usuario"]);
            $password = htmlspecialchars($_POST["contra"]);
            if($usuario=="admin" && $password=="H4CK3R4$1R"){
                echo"<p>Acceso concedido</p>";
            }else
                echo"<p>Acceso denegado</p>";
         }
    ?>
</body>
</html>