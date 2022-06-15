<?php
require "db/conn.php";
if(!isset($_SESSION["id"])) {
    header("location: index.html");
}
$id = $_SESSION["id"];
$ret = getDataById($conn, $id);

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="refresh" content="5">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Dashboard</title>
    <link rel="stylesheet" href="styles/dashboard.css">
</head>
<body>
    <header>
        <h1>IP Tracker</h1>
    </header>

    <div class="user-info">
        <div class="row">
            Your URL : <?php print "www.tracker.com/q.php?q=".$_SESSION["id"] ?>
        </div> 
        <div class="row">
            Numbers of clicks : <?php print(getCount($conn, $id)); ?>
        </div>
        <div class="button-row">
            <a href="deleteLink.php" class="dashboard-btn delete">Delete this link</a>
            <button onclick="generateReport()" class="dashboard-btn report">Generate Report</button>
            <a href="logout.php" class="dashboard-btn logout">Logout</a>
        </div>
    </div>

    <div class="data-table">
        <table class="table1" id="t1">
            <thead>
                <tr>
                    <th>Date</th>
                    <th>Time</th>
                    <th>IP</th>
                    <th>Browser</th>
                    <th>Version</th>
                    <th>Platform</th>
                    <th>Device</th>
                    <th>Country</th>
                    <th>City</th>
                </tr>
            </thead>

            <tbody>
                <?php while ($result = mysqli_fetch_assoc($ret)) { ?>
                    <tr>
                        <td><?= $result["date"]?></td>
                        <td><?= $result["time"]?></td>
                        <td><?= $result["ip"]?></td>
                        <td><?= $result["b_name"]?></td>
                        <td><?= $result["b_version"]?></td>
                        <td><?= $result["b_platform"]?></td>
                        <td><?= $result["device"]?></td>
                        <td><?= $result["country"]?></td>
                        <td><?= $result["city"]?></td>
                    </tr>

                    <?php } ?>
    

            </tbody>
        </table>
    </div>


    <script>
        function generateReport() {
            window.print();
        }
    </script>
    
</body>
</html>