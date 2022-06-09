<?php

include 'config/koneksi.php';
$id = $_GET['id'];

$sql = mysqli_query($koneksi, "DELETE FROM pengobatan WHERE id_pengobatan = $id ");

if ($sql) {
  ?>
  
  <script type="text/javascript">
    alert ("Data Berhasil Di Hapus");
    window.location.href="pengobatan.php";
  </script>
  <?php
}else {
  echo "error hapus";
}

?>