<?php
    // Configurar la zona horaria a Europa/Madrid
    date_default_timezone_set('Europe/Madrid');

    // Configurar la localización a español de España
    $locale = 'es_ES';

    // Crear un objeto IntlDateFormatter con la localización y el formato deseado
    $formatter = new IntlDateFormatter(
        $locale, 
        IntlDateFormatter::FULL, 
        IntlDateFormatter::NONE, 
        'Europe/Madrid', 
        IntlDateFormatter::GREGORIAN, 
        "d 'de' MMMM 'de' yyyy" // Formato personalizado
    );

    // Obtener la fecha actual
    $fechaActual = new DateTime();

    // Formatear la fecha actual
    $fechaFormateada = $formatter->format($fechaActual);

    // Mostrar la fecha actual en el formato solicitado
    echo "Hoy es $fechaFormateada.";
?>
