<?php

    // Incluyo el archivo donde está todo definido

    include 'config.php';

    // Muestro lo que he definido en el otro archivo por pantalla

    echo "<h1>Información relevante</h1>";
    echo "<h3>Nombre del alumno: " . NOMBRE . ".</h3>";
    echo "<h3>Grado en curso: " . GRADO . ".</h3>";
    echo "<p>Se encuentra en el año número " . $anyo . ".</p>";
    echo "<p>Actualmente está en clase de " . $asig . ".</p>";

?>