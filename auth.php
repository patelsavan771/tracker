<?php 
require "db/conn.php";

$id = $_POST["id"];
$password = $_POST["password"];

if(isValidUser($conn, $id, $password)) {
    $_SESSION["id"] = $id;
    header("location: dashboard.php");
}
else {
    print "<script>
    alert('invalid details.');
    window.location.href='index.html';
    </script>";
}

?>