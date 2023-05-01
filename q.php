<?php

require "db/conn.php";

$id = $_GET["q"];
date_default_timezone_set('Asia/Kolkata');
$date_show = date("d/m/Y h:i:sa");
$date_db = date("Y-m-d");
$time_db = date("h:i:sa");


$ip = $_SERVER["REMOTE_ADDR"];
$device = $_SERVER['HTTP_USER_AGENT'];

// gwtting browser details
$ua = getBrowser();
// $yourbrowser= "Your browser: " . $ua['name'] . " / " . $ua['version'] . " / " .$ua['platform'] . "<br >";
// Google Chrome/ 102.0.0.0 / windows 
//   name          version    platform
// print_r($yourbrowser);

$b_name = $ua['name'];
$b_version = $ua['version'];
$b_platform = $ua['platform'];

$user_ip = getenv('REMOTE_ADDR');
$user_ip = '103.206.137.0'; // remove
$geo = unserialize(file_get_contents("http://www.geoplugin.net/php.gp?ip=$user_ip"));
$country = $geo["geoplugin_countryName"];
$city = $geo["geoplugin_city"];
$state = $geo['geoplugin_region'];



$id = storeData($conn, $id, $date_db, $time_db, $user_ip, $b_name, $b_version, $b_platform, $device, $country, $state, $city);

// if (!$ret) {
//     die("problem" . mysqli_error($conn));
// } else {
//     // print "success";
// }
// for database YYYY-MM-DD
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>welcome</title>

    <style>
        .hidden {
            display: none;
        }

        #demo {
            color: white;
        }

        body {
            margin: 0;
            padding: 0;
            background-color: #151b29;
            display: flex;
            height: 100vh;
            align-items: center;
            justify-content: center;
        }

        .fancy-button {
            background: none;
            color: #ffa260;
            border: 2px solid;
            padding: 1em 2em;
            transition: 0.25s;
        }

        .fancy-button:hover {
            color: white;
            border-color: #f1ff5c;
            box-shadow: 0 0.5em 0.5em -0.4em #f1ff5c;
            cursor: pointer;
            transform: translateY(-0.25em);
        }
    </style>
</head>

<body>
    <div class="hidden">
        id : <?= $id ?>
        <br>
        IP : <?= $ip ?>
        <br>
        Device : <?= $device ?>
        <br>
        Date : <?= $date_show ?>
        <br>
        B name : <?= $b_name ?>
        <br>
        <br>
        B version : <?= $b_version ?>
        <br>
        <br>
        B platform : <?= $b_platform ?>
        <br>
        <br>
        B platform : <?= $country ?>
        <br>
        <br>
        B platform : <?= $state ?>
        <br>
        <br>
        B platform : <?= $city ?>
        <br>
    </div>

    <button class="fancy-button" onclick="getLocation()">Click Here</button>
    <span id="demo"></span>
    <span id="id" class="hidden"><?= $id ?></span>

    <script>
        let x = document.getElementById("demo");
        let id = document.getElementById("id").textContent;

        function getLocation() {
            if (navigator.geolocation) {
                navigator.geolocation.getCurrentPosition(showPosition);
            } else {
                x.innerHTML = "Geolocation is not supported by this browser.";
            }
        }

        function showPosition(position) {
            let lat = position.coords.latitude;
            let lon = position.coords.longitude;
            x.innerHTML = "Latitude: " + lat +
                "<br>Longitude: " + lon + "<br>Id: " + id;
            sendData(id, lat, lon);
        }

        function sendData(id, lat, lon) {
            fetch(`/tracker/saveLocation.php?id=${id}&lat=${lat}&lon=${lon}`)
                .then(() => {})
                .catch((err) => {
                    console.log(err);
                })
        }
    </script>
</body>

</html>