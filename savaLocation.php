<?php
require "db/conn.php";

// if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    
// }

if(isset($_GET["lon"]) && isset($_GET["let"])) {
    $lon = $_GET["lon"];
    $lat = $_GET["lat"];

    storeLocation();
}


?>