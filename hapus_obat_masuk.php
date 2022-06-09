<?php

include 'config/koneksi.php';
$id = $_GET['id'];

$sql = mysqli_query($koneksi, "DELETE FROM obat_masuk WHERE id_obat_masuk = $id ");

if ($sql) {
  ?>
  
  <script type="text/javascript">
    alert ("Data Berhasil Di Hapus");
    window.location.href="obat_masuk.php";
  </script>
  <?php
}else {
  echo "error hapus";
}

?>