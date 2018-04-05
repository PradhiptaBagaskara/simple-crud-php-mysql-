<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Belajar 2</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

  </head>
  <body>
    <a href="test2.php?add=data"><input type="submit" name="tambah" value="add-data"></a>
    <table border="1">
      <thead>
      <tr>
        <td>NO</td>
        <td>NAMA</td>
        <td>EMAIL</td>
        <td>NOMOR HP</td>
        <td>PILIHAN</td>
      </tr>
    </thead>
      <tbody>
        <?php
        include ('koneksi.php');
        //query sql
        $query = "select * from user";
        //eksekusi query
        $select = mysqli_query($koneksi,$query);
        //penomoran untuk looping
        $nomor = 1;
        // echo $wadah['id'];
        //looping untuk menampilkan data dari db dan dimasukan ke var $wadah
        while ($wadah = mysqli_fetch_array($select)) {


        ?>
        <tr>
          <td><?php echo $nomor++; ?></td>
          <td><?php echo $wadah['nama']; ?></td>
          <td><?php echo $wadah['email']; ?></td>
          <td><?php echo $wadah['nomer']; ?></td>
          <td><a href="test2.php?id=<?=$wadah['id'];?>">edit</a> | <a href="hapus.php?id=<?=$wadah['id'];?>">hapus</a> </td>
        </tr>
      <?php } ?>
      </tbody>
    </table>

  <?php
  //menyembunyikan error
  error_reporting(0);
  //var untuk menampung id
  $id = $_GET['id'];
  if ($id) {

    $row = mysqli_query($koneksi, "select * from user where id = '".$id."'");
    $res = mysqli_fetch_array($row);
    // echo $res['nama'];
    ?>
    <form name="setot" class="" action="#" method="POST">
      <label for="table">EDIT DATA</label>
      <table name="table">
        <tr><td> <label for="nama"></label>NAMA : </td></tr>
        <tr><td><input type="text" name="nama" value="<?=$res['nama'];?>" placeholder="edit nama"/ required></td></tr>
        <tr><td> <label for="email"></label>E-MAIL : </td></tr>
        <tr><td><input type="email" name="email" value="<?=$res['email'];?>" placeholder="isi email"/ required></td></tr>
        <tr><td> <label for="nomer"></label>NO. HP : </td></tr>
        <tr><td><input type="tel" name="nomer" value="<?=$res['nomer'];?>" placeholder="isi nomer" maxlength="13" required/></td></tr>
        <tr>
          <td><input type="submit" name="update" value="Update"></td>
          <td><input type="hidden" name="id" value=<?php echo $_GET['id'];?>></td>
        </tr>
      </table>
        <?php
        //update data
        if (isset($_POST['update'])){
          $nama = $_POST['nama'];
          $mail = $_POST['email'];
          $nomor = $_POST['nomer'];
          $update=mysqli_query($koneksi, "update user set
                                nama='".$nama."', email='".$mail."',
                                nomer='".$nomor."' where id='".$id."'");
              if ($update) {
                //jika sukses update url akan berubah
                header('location: test2.php?id='.$id.'&&update=sukses');

              }
        } ?>


    <?php
  }
  //add data baru
  if($_GET['add']) {

   ?>
    <form name="setot" class="" action="input.php" method="POST">
      <table>
        <tr><td> <label for="nama"></label>NAMA : </td></tr>
        <tr><td><input type="text" name="nama" value="" placeholder="isi nama" required /></td></tr>
        <tr><td> <label for="email"></label>E-MAIL : </td></tr>
        <tr><td><input type="email" name="email" value="" placeholder="isi email" required /></td></tr>
        <tr><td> <label for="nomer"></label>NO. HP : </td></tr>
        <tr><td><input type="tel" name="nomer" value="" placeholder="isi nomer" maxlength="13" required /></td></tr>
        <tr><td><button type="submit" name="kirim">input</button></td></tr>
      </table>
    </form>
  <?php } ?>
  </body>
</html>
