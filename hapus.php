<?php
// include koneksi database
include_once("koneksi.php");

// Get id dari url
$id = $_GET['id'];

// Delete tabel user dimana id = var $id
$result = mysqli_query($koneksi, "DELETE FROM user WHERE id=$id");
if ($result) {
  //jika sukses url akan berubah menjadi sukses
  header("Location:test2.php?delete-data=sukses");

}else {
  header("Location:test2.php?delete-data=gagal");

}

 ?>
