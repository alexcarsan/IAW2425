<?php 
function conectar() {
     $servername = "sql308.thsite.top";
    $username = "thsi_38097518";
    $password = "K!R9Y7fc";
    $db = "thsi_38097518_proyecto";

    // Create connection
    $conn = mysqli_connect($servername, $username, $password, $db);

    // Check connection
    if (!$conn) {
        die("Connection failed: " . mysqli_connect_error());
    }
   
    return $conn;
}

?>