<?php
include 'header.php';
include 'menu.php';
include 'config/koneksi.php';
// $id = $_GET['id'];
// $sql = mysqli_query($koneksi, "SELECT a.tgl_masuk, a.jml_masuk, a.id_obat_masuk, b.nama_obat, b.id_obat, b.stok_obat AS stok FROM obat_masuk AS a
// 	JOIN obat  AS b ON a.id_obat = b.id_obat WHERE a.id_obat_masuk = $id");
// $data = mysqli_fetch_assoc($sql);
$id = $_GET['id'];
$data = mysqli_fetch_assoc(mysqli_query($koneksi, "SELECT * FROM obat_masuk WHERE id_obat_masuk = $id"));

$id_obat = $data['id_obat'];
$brg = mysqli_fetch_assoc(mysqli_query($koneksi, "SELECT * FROM obat WHERE id_obat = $id_obat"));
?>
<div class="main-panel">
	<div class="content">
		<div class="page-inner">
			<div class="page-header">
				<h4 class="page-title">Edit Data Obat</h4>
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
						<a href="obat_masuk.php">Data Obat Masuk</a>
					</li>
				</ul>
			</div>
			<div class="row">
				<div class="col-md-12">
					<div class="card">
						<div class="card-body">
							<div class="row">
								<div class="col-md-6 col-lg-8">
									<form method="POST">
										<div class="form-group">
											<label>Nama Obat</label>
											<div class="input-icon">
												<span class="input-icon-addon">
													<i class="fa fa-briefcase-medical"></i>
												</span>
												<input type="text" name="nama_obat" class="form-control" disabled="" value="<?= $brg['nama_obat'] ?>">
											</div>
											<input type="hidden" name="id_obat" value="<?= $id_obat ?>">
											<input type="hidden" name="id_masuk" value="<?= $id ?>">
											<input type="hidden" name="jml_masuk_awal" value="<?= $data['jml_masuk'] ?>">
											<input type="hidden" name="stok" value="<?= $brg['stok_obat'] ?>">
										</div>
										<div class="form-group">
											<label>Tgl Masuk</label>
											<div class="input-icon">
												<span class="input-icon-addon">
													<i class="fa fa-calendar"></i>
												</span>
												<input type="date" name="tgl_masuk" class="form-control" value="<?= $data['tgl_masuk'] ?>">
											</div>
										</div>
										<div class="form-group">
											<label>Jumlah</label>
											<div class="input-icon">
												<span class="input-icon-addon">
													<i class="fa fa-box-open"></i>
												</span>
												<input type="number" name="jml_masuk" class="form-control" value="<?= $data['jml_masuk'] ?>">
											</div>
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
		$id_masuk = $_POST['id_masuk'];
		$id_obat = $_POST['id_obat'];
		$jml_masuk_awal = $_POST['jml_masuk_awal'];
		$stok = $_POST['stok'];
		$jml_masuk = $_POST['jml_masuk'];
		$tgl_masuk = $_POST['tgl_masuk'];

		$stok_awal = $stok - $jml_masuk_awal;
		$stok_akhir = $stok_awal + $jml_masuk; 

		$sql = mysqli_query($koneksi, " UPDATE obat_masuk SET tgl_masuk = '$tgl_masuk', jml_masuk = '$jml_masuk' WHERE id_obat_masuk = $id_masuk ");

		$sql2 = mysqli_query($koneksi, "UPDATE obat SET stok_obat = $stok_akhir WHERE id_obat = $id_obat");

		if ($sql && $sql2) {
			?>
			<script type="text/javascript">
				alert ("Data Berhasil Di Simpan");
				window.location.href="obat_masuk.php";
			</script>      
			<?php  
		}
	}
	?>