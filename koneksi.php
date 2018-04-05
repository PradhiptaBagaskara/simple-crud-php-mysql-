<?php

$server = "localhost"; //server
$user = "root"; //username
$pass = ""; //password
$db = "belajar"; //database

// koneksi ke mysql format: mysqli_connect(nama_server, username, password, nama_database);
$koneksi = mysqli_connect($server, $user, $pass, $db);
// mysqli_select_db($db);
//logika untuk test koneksi
if ($koneksi) {
  // echo "sukses terkoneksi";
}else {
  echo "gagal sukses";
}

?>
