<?php

include 'config/koneksi.php';
$id = $_GET['id'];

$sql = mysqli_query($koneksi, "DELETE FROM obat WHERE id_obat = $id ");
$sql2 = mysqli_query($koneksi, "DELETE FROM obat_masuk WHERE id_obat = $id ");

if ($sql && $sql2) {
  ?>
  
  <script type="text/javascript">
    alert ("Data Berhasil Di Hapus");
    window.location.href="obat.php";
  </script>
  <?php
}else {
  echo "error hapus";
}

?>