<?php

    $num = 1; //Empezamos por el 1
    $total = 10; //Llegamos al 10

    echo "<table border='1'>";
    while ($num <= $total){
        echo "<tr><td>" . $num . "</td></tr>";
        $num += 1;
    }
    echo "</table>";

?>