<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>For</title>
</head>
<body>

<?php

    echo "<table border='1'>";
    echo "<tr>";
    for ($num = 1;$num <= 10;$num++) {
        echo "<td>" . $num . "</td>";
    }
    echo "</tr>";
    echo "</table>";

?>

</body>
</html>