<?php
    
require "db/conn.php";
if(!isset($_SESSION["id"])) {
    header("location: index.html");
}
$id = $_SESSION["id"];

if(deleteLink($conn, $id)) {
    print "<script>
    alert('deleted successfully.');
    window.location.href='index.html';
    </script>";
}
else {
    print "<script>
    alert('something went wrong. try again');
    </script>";
    include "dashboard.php";
}


?>