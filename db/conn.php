<?php
session_start();
$hostURL = "localhost/tracker";
$dbhost = "localhost";
$dbusername = "root";
$dbpassword = "";
$dbname = "ip_tracker";

$conn = mysqli_connect($dbhost, $dbusername, $dbpassword, $dbname);

if (!$conn) {
  die("cannot connect to db. " . mysqli_error($conn));
}


function isRegistered($conn, $id)
{
  $q = "select count(*) as num from login where id ='$id'";

  $result = mysqli_query($conn, $q);
  $result = mysqli_fetch_assoc($result);
  if ($result["num"] != 0) {
    return true;
  }
  return false;
}

function registerLink($conn, $id, $password)
{
  $q = "insert into login values ('$id', '$password')";
  $result = mysqli_query($conn, $q);
  if (!$result) {
    return false;
  } else {
    return true;
  }
}

function isValidUser($conn, $id, $password)
{
  $q = "select count(*) as num from login where id ='$id' and password = '$password'";

  $result = mysqli_query($conn, $q);
  $result = mysqli_fetch_assoc($result);
  if ($result["num"] == 0) {
    return false;
  }
  return true;
}

// functioinsertData()

function storeData($conn, $id, $date_db, $time_db, $ip, $b_name, $b_version, $b_platform, $device, $country, $state, $city)
{
  $q = "insert into storage (user_id, date, time, ip, b_name, b_version, b_platform, device, country, state, city) values ('$id', '$date_db', '$time_db', '$ip', '$b_name', '$b_version', '$b_platform', '$device', '$country', '$state', '$city')";

  $ret = mysqli_query($conn, $q);
  $id = mysqli_insert_id($conn);
  return $id;
}


function getCount($conn, $id)
{
  $q = "select count(*) as clicks from storage where user_id = '$id'";
  $result = mysqli_query($conn, $q);
  $result = mysqli_fetch_assoc($result);
  return $result["clicks"];
}

function getDataById($conn, $id)
{
  $q = "select * from storage where user_id = '$id'";
  $result = mysqli_query($conn, $q);
  return $result;
}

function deleteLink($conn, $id)
{
  $q = "delete from storage where user_id = '$id'";
  $result = mysqli_query($conn, $q);
  $q = "delete from login where id = '$id'";
  $result1 = mysqli_query($conn, $q);

  return ($result && $result1);
}

function storeLocation($conn, $id, $lat, $lon)
{
  $q = "Update storage set latitude='$lat', longitude='$lon' where id = $id";

  $ret = mysqli_query($conn, $q);

  return $ret;
}


function getBrowser()
{
  $u_agent = $_SERVER['HTTP_USER_AGENT'];
  $bname = 'Unknown';
  $platform = 'Unknown';
  $version = "";

  //First get the platform?
  if (preg_match('/linux/i', $u_agent)) {
    $platform = 'linux';
  } elseif (preg_match('/macintosh|mac os x/i', $u_agent)) {
    $platform = 'mac';
  } elseif (preg_match('/windows|win32/i', $u_agent)) {
    $platform = 'windows';
  }

  // Next get the name of the useragent yes seperately and for good reason
  if (preg_match('/MSIE/i', $u_agent) && !preg_match('/Opera/i', $u_agent)) {
    $bname = 'Internet Explorer';
    $ub = "MSIE";
  } elseif (preg_match('/Firefox/i', $u_agent)) {
    $bname = 'Mozilla Firefox';
    $ub = "Firefox";
  } elseif (preg_match('/OPR/i', $u_agent)) {
    $bname = 'Opera';
    $ub = "Opera";
  } elseif (preg_match('/Chrome/i', $u_agent) && !preg_match('/Edge/i', $u_agent)) {
    $bname = 'Google Chrome';
    $ub = "Chrome";
  } elseif (preg_match('/Safari/i', $u_agent) && !preg_match('/Edge/i', $u_agent)) {
    $bname = 'Apple Safari';
    $ub = "Safari";
  } elseif (preg_match('/Netscape/i', $u_agent)) {
    $bname = 'Netscape';
    $ub = "Netscape";
  } elseif (preg_match('/Edge/i', $u_agent)) {
    $bname = 'Edge';
    $ub = "Edge";
  } elseif (preg_match('/Trident/i', $u_agent)) {
    $bname = 'Internet Explorer';
    $ub = "MSIE";
  }

  // finally get the correct version number
  $known = array('Version', $ub, 'other');
  $pattern = '#(?<browser>' . join('|', $known) .
    ')[/ ]+(?<version>[0-9.|a-zA-Z.]*)#';
  if (!preg_match_all($pattern, $u_agent, $matches)) {
    // we have no matching number just continue
  }
  // see how many we have
  $i = count($matches['browser']);
  if ($i != 1) {
    //we will have two since we are not using 'other' argument yet
    //see if version is before or after the name
    if (strripos($u_agent, "Version") < strripos($u_agent, $ub)) {
      $version = $matches['version'][0];
    } else {
      $version = $matches['version'][1];
    }
  } else {
    $version = $matches['version'][0];
  }

  // check if we have a number
  if ($version == null || $version == "") {
    $version = "?";
  }

  return array(
    'userAgent' => $u_agent,
    'name'      => $bname,
    'version'   => $version,
    'platform'  => $platform,
    'pattern'    => $pattern
  );
}
