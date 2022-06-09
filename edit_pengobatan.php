<?php
include 'header.php';
include 'menu.php';
include 'config/koneksi.php';
$id = $_GET['id'];
$sql = mysqli_fetch_assoc(mysqli_query($koneksi, "SELECT * FROM pengobatan WHERE id_pengobatan = $id "));

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
						<a href="edit_pengobatan.php">Pengobatan</a>
					</li>
				</ul>
			</div>
			<div class="row">
				<div class="col-md-12">
					<div class="card">
						<div class="card-header">
							<div class="card-title">Edit Pengobatan</div>
						</div>
						<div class="card-body">
							<div class="row">
								<div class="col-md-12 col-lg-12">
									<tr>
										<form action="" method="POST">
											<div class="form-group">
												<label for="exampleInputPassword1">Id Sakit</label>
												<input type="text" name="id_sakit" class="form-control" id="exampleInputPassword1" value="<?= $sql['id_sakit'] ?>">
											</div>
											<div class="form-group">
												<label for="exampleInputPassword1">Id Obat</label>
												<input type="text" name="id_obat" class="form-control" id="exampleInputPassword1" value="<?= $sql['id_obat'] ?>">
											</div>
											<div class="form-group">
												<label for="exampleInputPassword1">Jumlah</label>
												<input type="int"  name="jumlah" class="form-control" id="exampleInputPassword1" value="<?= $sql['jumlah'] ?>">
											</div>
											<div class="form-group">
												<label for="exampleInputPassword1">Tgl Beri</label>
												<input type="date"  name="tgl_beri" class="form-control" id="exampleInputPassword1" value="<?= $sql['tgl_beri'] ?>">
											</div>
											
											<button type="submit"  name="simpan" class="btn btn-primary btn-icon-split btn-sm">
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
		
		$id_sakit = $_POST['id_sakit'];
		$id_obat = $_POST['id_obat'];
		$jumlah = $_POST['jumlah'];
		$tgl_beri = $_POST['tgl_beri'];
		

		$sql = mysqli_query($koneksi, " UPDATE pengobatan SET id_sakit ='$id_sakit', id_obat ='$id_obat', jumlah ='$jumlah', tgl_beri ='$tgl_beri' WHERE id_pengobatan = $id");

		if ($sql) {
			?>
			<script type="text/javascript">
				alert ("Data Berhasil Di Update");
				window.location.href="pengobatan.php";
			</script>      
			<?php  
		}
	}
	?>