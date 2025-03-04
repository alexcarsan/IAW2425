<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Foreach 2</title>
</head>
<body>
    
    <?php
    
        $diccionario = [
            "blanco" => "white",
            "negro" => "black",
            "verde" => "green",
            "azul" => "blue",
            "rojo" => "red"
        ];

        echo "<h1>Diccionario</h1>";

        echo "<ul>";
        foreach ($diccionario as $palabraEspañol=>$palabraIngles) {
            echo "<li>$palabraEspañol en inglés es $palabraIngles </li>";
        }
        echo "</ul>";
    ?>


</body>
</html>