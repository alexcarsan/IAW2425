<?php

    $color = "rgb(" . rand(0, 255) . "," . rand(0, 255) . "," . rand(0, 255) . ")" ; //Creo una variable que genere un color automático

?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cuadrado aleatorio</title>
    <style>

        #cuadrado {
            width: 300px; /*Le pongo 300px de ancho*/
            height: 300px; /*Le pongo 300px de alto*/
            background-color: <?php echo $color; ?>; /*Hago que como color de fondo utilice la variable que he creado con PHP*/
        }

    </style>
</head>
<body>
    
    <div id="cuadrado"></div>

</body>
</html>