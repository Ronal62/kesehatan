<?php
include 'header.php';
include 'menu.php';
include 'config/koneksi.php';

?>
<div class="main-panel">
  <div class="content">
    <div class="page-inner">
      <div class="page-header">
        <h4 class="page-title">Forms</h4>
        <ul class="breadcrumbs">
          <li class="nav-home">
            <a href="index.php">
              <i class="flaticon-home"></i>
            </a>
          </li>
          <li class="separator">
            <i class="flaticon-right-arrow"></i>
          </li>
          <li class="nav-item">
            <a href="contoh.php">Contoh</a>
          </li>
        </ul>
      </div>
      <div class="row">
        <div class="col-md-12">
          <div class="card">
            <div class="card-header">
              <div class="card-title">Tambah Contoh</div>
            </div>
            <div class="card-body">
              <div class="row">
                <div class="col-md-12 col-lg-12">
                  <form action="" method="post">
                    <div class="form-group">
                      <label for="exampleInputEmail1">Nama Santri</label>
                      <select class="form-control" name="nis" required="">
                        <option>-- pilih santri --</option>
                        <?php
                        $sn = mysqli_query($koneksi, "SELECT * FROM tb_santri");
                        while ($a = mysqli_fetch_assoc($sn)) { ?>
                          <option value="<?= $a['nis'] ?>"><?= $a['nis'].' - 
                          '.$a['nama'] ?></option>
                          <?php } ?>                    ?>    
                        </select>
                      </div>
                      <div class="form-group">
                        <label>DS</label>
                        <input type="text" name="ds" class="form-control" placeholder="Enter DS">
                      </div>
                      <div class="form-group">
                        <label>DO</label>
                        <input type="text" name="do" class="form-control" placeholder="Enter DO">
                      </div>
                      <td>
                        <div class="form-group">
                          <label>Status</label><br>
                          <input type="radio" name="status" id="" value="Sembuh"> Sembuh
                          <input type="radio" name="status" id="" value="Sakit"> Sakit 
                        </div>
                        <div class="form-check">
                          <input type="checkbox" class="form-check-input" id="exampleCheck1">
                          <label class="form-check-label" for="exampleCheck1">Check In</label>
                        </div>
                        <button type="submit" name="simpan" class="btn btn-primary">Simpan</button>
                      </form>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <?php
      include 'footer.php';
      ?>
    </div>
    <?php
    if (isset($_POST['simpan'])) {

      $nis = $_POST['nis'];
      $ds = $_POST['ds'];
      $do = $_POST['do'];
      $status = $_POST['status'];

      $sql = mysqli_query($koneksi, " INSERT INTO sakit VALUES('', '$nis', '$ds', '$do', '$status')");

      if ($sql) {
        ?>
        <script type="text/javascript">
          alert ("Data Berhasil Di Simpan");
          window.location.href="sakit.php";
        </script>      
        <?php  
      }
    }
    ?>