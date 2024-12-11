<?php

    $fechaActual = date("Y-m-d");
    $date1 = date_create("2025-05-06");
    $date2 = date_create($fechaActual);
    $contador = date_diff($date1, $date2);
    $differenceFormat = "%a";

    echo "Quedan " . $contador->format($differenceFormat) . " días para la feria." 

?>