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
						<a href="obat.php">Data Obat</a>
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
										<div class="form-group">
											<label>Nama Obat</label>
											<div class="input-icon">
												<span class="input-icon-addon">
													<i class="fa fa-briefcase-medical"></i>
												</span>
												<input type="text" name="nama_obat" class="form-control" placeholder="Masukkan Nama Obat">
											</div>
										</div>
										<div class="form-group">
											<label>Stok</label>
											<div class="input-icon">
												<span class="input-icon-addon">
													<i class="fa fa-box-open"></i>
												</span>
												<input type="number" name="stok_obat" class="form-control" >
											</div>
										</div>
										<div class="form-group">
											<label>Satuan</label>
											<div class="input-icon">
												<span class="input-icon-addon">
													<i class="fa fa-list"></i>
												</span>
												<input type="text" name="satuan" class="form-control" placeholder="Masukkan Satuan">
											</div>
										</div>
										<div class="form-group">
											<label>Jenis Obat</label><br>
											<input type="radio" name="jenis" id="" value="Berat"> Berat
											<input type="radio" name="jenis" id="" value="Ringan"> Ringan 
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
</div>

<?php
if (isset($_POST['simpan'])) {
	$nama_obat = $_POST['nama_obat'];
	$stok_obat = $_POST['stok_obat'];
	$satuan = $_POST['satuan'];
	$jenis = $_POST['jenis'];

	$sql = mysqli_query($koneksi, " INSERT INTO obat VALUES('', '$nama_obat', '$stok_obat', '$satuan', '$jenis' )");

	if ($sql) {
		?>
		<script type="text/javascript">
			alert ("Data Berhasil Di Simpan");
			window.location.href="obat.php";
		</script>      
		<?php  
	}
}
?>