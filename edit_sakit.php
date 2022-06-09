<?php
include 'header.php';
include 'menu.php';
include 'config/koneksi.php';
$id = $_GET['id'];
$data = mysqli_fetch_assoc(mysqli_query($koneksi, "SELECT * FROM sakit WHERE id_sakit = $id"));

$id_sakit = $data['nis'];
$brg = mysqli_fetch_assoc(mysqli_query($koneksi, "SELECT * FROM tb_santri WHERE nis = $id_sakit"));
?>
<div class="main-panel">
  <div class="content">
    <div class="page-inner">
      <div class="page-header">
        <h4 class="page-title">Edit Data Sakit</h4>
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
            <a href="sakit.php">Data Sakit</a>
          </li>
        </ul>
      </div>
      <div class="row">
        <div class="col-md-12">
          <div class="card">
            <div class="card-header">
              <div class="card-title">Edit Data Sakit</div>
            </div>
            <div class="card-body">
              <div class="row">
                <div class="col-md-6 col-lg-8">
                  <form method="POST">
                    <div class="form-group">
                      <label>Nama Santri</label>
                      <div class="input-icon">
                        <span class="input-icon-addon">
                          <i class="fa fa-user"></i>
                        </span>
                        <input type="text" name="nis" class="form-control" value="<?= $brg['nama'] ?>">
                      </div>
                    </div>
                    <div class="form-group">
                      <label>DS</label>
                      <div class="input-icon">
                        <span class="input-icon-addon">
                          <i class="fa fa-user"></i>
                        </span>
                        <input type="text" name="ds" class="form-control" value="<?= $data['ds'] ?>">
                      </div>
                    </div>
                    <div class="form-group">
                      <label>DO</label>
                      <div class="input-icon">
                        <span class="input-icon-addon">
                          <i class="fa fa-list"></i>
                        </span>
                        <input type="text" name="do" class="form-control" value="<?= $data['do'] ?>">
                      </div>
                    </div>
                    <div class="form-group">
                      <label>Status</label><br>
                      <input type="radio" name="status" id="" value="Sembuh" <?php if($data['status']=='Sembuh'){ echo "checked"; } ?> > Sembuh
                      <input type="radio" name="status" id="" value="Sakit" <?php if($data['status']=='Sakit'){ echo "checked"; } ?> > Sakit 
                    </div>  
                    <button type="submit" value="Simpan" name="simpan" class="btn btn-primary">Simpan</button>
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

  <?php
  if (isset($_POST['simpan'])) {
    $nis = $_POST['nis'];
    $ds = $_POST['ds'];
    $do = $_POST['do'];
    $status = $_POST['status'];

    $sql = mysqli_query($koneksi, "UPDATE sakit SET nis = '$nis', ds = '$ds', do = '$do', status = '$status' WHERE id_sakit = $id ");

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