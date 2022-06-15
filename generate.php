<?php

require "db/conn.php";

if(!isset($_POST["id"]) || !isset($_POST["password"])) {
    header("location: generateLink.html");
}

$id = $_POST["id"];
$password = $_POST["password"];

if(isRegistered($conn, $id)) {
    print "<script>
    alert('already in use try something else.');
    </script>";
    include "generateLink.html";
}
else {
    if(registerLink($conn, $id, $password)) {
        $_SESSION["id"] = $id;
        print "<script>
    alert('successfully registered.');
    window.location.href='dashboard.php';
    </script>";
    }
}





?>