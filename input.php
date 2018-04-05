<?php
//include file koneksi
include ('koneksi.php');
//mendifinisikan data dengan variabel
$nama = $_POST['nama'];
$mail = $_POST['email'];
$nomor = $_POST['nomer'];

//query ke database
$query = "insert into user (nama,email,nomer) value ('".$nama."','".$mail."','".$nomor."')";
//eksekusi query
$sql = mysqli_query($koneksi, $query);
if ($sql) {
  header('location: test2.php?add-data=suksess');
}else {
  echo "gagal input";
}





?>
