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
						<a href="pemeriksaan.php">Pemeriksaan</a>
					</li>
				</ul>
			</div>
			<div class="row">
				<div class="col-md-12">
					<div class="card">
						<div class="card-header">
							<div class="card-title">Tambah Data Pemeriksaan</div>
						</div>
						<div class="card-body">
							<div class="row">
								<div class="col-md-6 col-lg-8">
									<form method="POST">
										<div class="form-group form-floating-label">
											<select name="id_obat" class="form-control input-border-bottom"  required>
												<option value="">-- Pilih --</option>
												<?php
												$qr = mysqli_query($koneksi, "SELECT * FROM tb_santri JOIN sakit ON tb_santri.nis = sakit.nis");
												while ($d = mysqli_fetch_assoc($qr)) { ?>
													<option value="<?= $d['id_sakit'] ?>">
														<?= $d['nama'] ?>
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
		<div class="row">
			<div class="col-md-12">
				<div class="card">
					<div class="card-header">
						<div class="card-title">Tambah Pemeriksaan</div>
					</div>
					<div class="card-body">
						<div class="row">
							<div class="col-md-12 col-lg-12">
								<tr>
									<form action="" method="POST">
										<div class="form-group">
											<label for="exampleInputPassword1">Nama</label>
											<input type="text" name="nama" class="form-control" id="exampleInputPassword1" placeholder="">
										</div>
										<div class="form-group">
											<label for="exampleInputPassword1">Tanggal Sakit</label>
											<input type="date" name="tgl_sakit" class="form-control" id="exampleInputPassword1" placeholder="">
										</div>
										<div class="form-group">
											<label for="exampleInputPassword1">Tanggal Sembuh</label>
											<input type="date"  name="tgl_sembuh" class="form-control" id="exampleInputPassword1" placeholder="">
										</div>
										<div class="form-check">
											<label for="">Status</label><br>
											<label class="form-radio-label">
												<input type="radio" class="form-radio-input" name="status" id="" value="sakit">
												<span class="form-radio-sign">Sakit</span>
											</label>
											<label class="form-radio-label ml-3">
												<input type="radio" class="form-radio-input" name="status" id="" value="sembuh">
												<span class="form-radio-sign">Sembuh</span>
											</label>
										</div>
										<div class="form-check">
											<label for="">Kategori</label><br>
											<label class="form-radio-label">
												<input type="radio" class="form-radio-input" name="kategori" id="" value="berat">
												<span class="form-radio-sign">Berat</span>
											</label>
											<label class="form-radio-label ml-3">
												<input type="radio" class="form-radio-input" name="kategori" id="" value="ringan">
												<span class="form-radio-sign">Ringan</span>
											</label>
										</div>
										<button type="submit" value="Simpan" name="simpan" class="btn btn-primary btn-icon-split btn-sm">
											<span class="icon text-white-50">
												<i class="fas fa-save"></i>
											</span>
											<span class="text font-weight-bold">Simpan</span>
										</button>
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
	
	$nama = $_POST['nama'];
	$tgl_sakit = $_POST['tgl_sakit'];
	$tgl_sembuh = $_POST['tgl_sembuh'];
	$status = $_POST['status'];
	$kategori = $_POST['kategori'];

	$sql = mysqli_query($koneksi, " INSERT INTO pemeriksaan VALUES('', '$nama', '$tgl_sakit', '$tgl_sembuh', '$status', '$kategori')");

	if ($sql) {
		?>
		<script type="text/javascript">
			alert ("Data Berhasil Di Simpan");
			window.location.href="pemeriksaan.php";
		</script>      
		<?php  
	}
}
?>