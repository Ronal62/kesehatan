<?php

include 'config/koneksi.php';
$id = $_GET['id'];

$sql = mysqli_query($koneksi, "DELETE FROM siswa WHERE id_siswa = $id ");

if ($sql) {
  ?>
  
  <script type="text/javascript">
    alert ("Data Berhasil Di Hapus");
    window.location.href="siswa.php";
  </script>
  <?php
}else {
  echo "error hapus";
}

?>