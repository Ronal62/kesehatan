<?php

include 'config/koneksi.php';
$id = $_GET['id'];

$sql = mysqli_query($koneksi, "DELETE FROM pemeriksaan WHERE id_pemeriksaan = $id ");

if ($sql) {
  ?>
  
  <script type="text/javascript">
    alert ("Data Berhasil Di Hapus");
    window.location.href="pemeriksaan.php";
  </script>
  <?php
}else {
  echo "error hapus";
}

?>