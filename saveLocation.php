<?php
require "db/conn.php";

// if ($_SERVER['REQUEST_METHOD'] === 'POST') {

// }
if (isset($_GET["lon"]) && isset($_GET["lat"]) && isset($_GET["id"])) {
    $lon = $_GET["lon"];
    $lat = $_GET["lat"];
    $id = $_GET["id"];

    storeLocation($conn, $id, $lat, $lon);
}
