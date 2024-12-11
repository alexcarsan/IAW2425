<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ejemplo de ejercicio de examen</title>
    <script>
        function validarFormulario(event) {
            const numero = document.getElementById('numero').value;
            if (numero <= 0 || isNaN(numero)) {
                alert('Por favor, introduce un número mayor que 0.');
            }
        }
    </script>
</head>

<body>

    <h1>Introduce un número mayor que 0</h1>

    <form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>">

    <input type="text" id="numero" name="numero"> <br>

    <button type="submit">Enviar</button>

    <div id="resultado">

    <?php

        if (isset($_POST['numero'])) {
            $numero = intval($_POST['numero']);
            if ($numero > 0) {
                echo '<h2>Resultado:</h2>';
                echo '<pre>';
                for ($i = 1; $i <= $numero; $i++) {
                    for ($j = 1; $j <= $i; $j++) {
                        echo '*';
                    }
                    echo "\n";
                }
                echo '</pre>';
            } else {
                echo '<p>El número debe ser mayor que 0.</p>';
            }
        }


    ?>

    </div>

    </form>

</body>
</html>
