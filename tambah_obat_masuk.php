<?php
include 'header.php';
include 'menu.php';
include 'config/koneksi.php';
?>
<div class="main-panel">
	<div class="content">
		<div class="page-inner">
			<div class="page-header">
				<h4 class="page-title">Tambah Data Obat</h4>
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
						<div class="card-header">
							<div class="card-title">Tambah Data Obat</div>
						</div>
						<div class="card-body">
							<div class="row">
								<div class="col-md-6 col-lg-8">
									<form method="POST">
										<div class="form-group form-floating-label">
											<select name="id_obat" class="form-control input-border-bottom"  required>
												<option value="">-- Pilih --</option>
												<?php
												$qr = mysqli_query($koneksi, "SELECT * FROM obat");
												while ($d = mysqli_fetch_assoc($qr)) { ?>
													<option value="<?= $d['id_obat'] ?>">
														<?= $d['nama_obat'] ?>
													</option>
												<?php } ?>
											</select>
										</div>
										<button type="submit" value="Cari" name="cari" class="btn btn-primary">Cari</button>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<?php
			if (isset($_POST['cari'])) {

				$id_obat = $_POST['id_obat'];
				$sql = mysqli_query($koneksi, "SELECT * FROM obat WHERE id_obat = $id_obat");
				$data = mysqli_fetch_assoc($sql);
				?>
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
												<input type="text" name="nama_obat" class="form-control" disabled="" value="<?= $data['nama_obat'] ?>">
											</div>
											<input type="hidden" name="id_obat" value="<?= $id_obat ?>">
										</div>
										<div class="form-group">
											<label>Tgl Masuk</label>
											<div class="input-icon">
												<span class="input-icon-addon">
													<i class="fa fa-calendar"></i>
												</span>
												<input type="date" name="tgl_masuk" class="form-control" >
											</div>
										</div>
										<div class="form-group">
											<label>Jumlah</label>
											<div class="input-icon">
												<span class="input-icon-addon">
													<i class="fa fa-box-open"></i>
												</span>
												<input type="number" name="jml_masuk" class="form-control" >
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
		<?php } ?>


	</div>
</div>
<?php
include 'footer.php';
?>


<?php
if (isset($_POST['simpan'])) {
	$tgl_masuk = $_POST['tgl_masuk'];
	$jml_masuk = $_POST['jml_masuk'];
	$id_obat = $_POST['id_obat'];

	$sql = mysqli_query($koneksi, " INSERT INTO obat_masuk VALUES('', '$tgl_masuk', '$jml_masuk', '$id_obat' )");

	$sql2 = mysqli_query($koneksi, "UPDATE obat SET stok_obat = stok_obat + $jml_masuk WHERE id_obat = $id_obat");

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