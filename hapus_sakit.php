<?php
include 'config/koneksi.php';
$id = $_GET['id'];

$sql = mysqli_query($koneksi, "DELETE FROM sakit WHERE id_sakit = $id ");

      if ($sql) {
      ?>
        
        <script type="text/javascript">
          alert ("Data Berhasil Di Hapus");
          window.location.href="sakit.php";
        </script>
        <?php
    }else {
    echo "error hapus";
    }

?>