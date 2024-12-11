<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Foreach 1</title>
</head>
<body>
    
    <?php
    
        $refranes = [
            "A quien madruga, Dios lo ayuda.",
            "Más vale tarde que nunca.",
            "No hay mal que por bien no venga.",
            "Camarón que se duerme, se lo lleva la corriente.",
            "En boca cerrada no entran moscas."
        ];

        foreach ($refranes as $refran) {
            echo "<p>$refran</p>";
        }
    
    ?>

</body>
</html>