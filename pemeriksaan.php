<?php
include 'header.php';
include 'menu.php';
include 'config/koneksi.php';
?>
<div class="main-panel">
  <div class="content">
    <div class="page-inner">
      <div class="page-header">
        <h4 class="page-title">DataTables.Net</h4>
        <ul class="breadcrumbs">
          <li class="nav-home">
            <a href="#">
              <i class="flaticon-home"></i>
            </a>
          </li>
          <li class="separator">
            <i class="flaticon-right-arrow"></i>
          </li>
          <li class="nav-item">
            <a href="#">Tables</a>
          </li>
          <li class="separator">
            <i class="flaticon-right-arrow"></i>
          </li>
          <li class="nav-item">
            <a href="#">Datatables</a>
          </li>
        </ul>
      </div>
      <div class="row">
        <div class="col-md-12">
          <div class="card">
            <div class="card-header">
              <a href="tambah_pemeriksaan.php" class="btn btn-primary">
                <span class="btn-label">
                  <i class="fa fa-plus"></i>
                </span>
                Tambah Data
              </a>
            </div>
            <div class="card-body">
              <div class="table-responsive">
                <table id="basic-datatables" class="display table table-striped table-hover" >
                  <thead>
                    <tr>
                      <th>No</th>
                      <th>Nama</th>
                      <th>Tgl Sakit</th>
                      <th>Tgl Sembuh</th>
                      <th>Status</th>
                      <th>Kategori</th>
                      <th style="text-align: center;">Aksi</th>

                    </tr>
                  </thead>
                  <tbody>
                    <?php
                    $no=1;
                    $sql = mysqli_query($koneksi, "SELECT * FROM pemeriksaan");
                    while ($row = mysqli_fetch_assoc($sql)) {
                      ?>
                      <tr>
                        <td><?= $no ?></td>
                        <td><?= $row['id_sakit'] ?></td>
                        <td><?= $row['tgl_sakit'] ?></td>
                        <td><?= $row['tgl_sembuh'] ?></td>
                        <td><?= $row['status'] ?></td>
                        <td><?= $row['kategori'] ?></td>


                        <td style="text-align: center;">
                          <a onclick="return confirm('Apakah Anda Yakin Ingin Menghapus Data Ini ?')" class="btn btn-danger btn-icon-split btn-sm " href="<?= 'hapus_pemeriksaan.php?id=' . $row['id_pemeriksaan']?>">
                            <span class="icon text-white-50">
                              <i class="fas fa-trash"></i>
                            </span>
                            <span class="text font-weight-bold">Hapus</span>
                          </a>
                          <a href="<?= 'edit_pemeriksaan.php?id=' . $row['id_pemeriksaan']?>" class="btn btn-success btn-icon-split btn-xs">
                            <span class="icon text-white-50">
                              <i class="fas fa-cog"></i>
                            </span>
                            <span class="text font-weight-bold">Edit</span>
                          </a>
                        </td>

                      </tr>
                      <?php
                      $no++;
                    }
                    ?>
                  </tbody>
                </table>
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
