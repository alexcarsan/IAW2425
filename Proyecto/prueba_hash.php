<?php

 // Hash de la contraseña
 $hashed_password = password_hash($_POST['alex'], PASSWORD_DEFAULT);
 echo $hashed_password;

?>