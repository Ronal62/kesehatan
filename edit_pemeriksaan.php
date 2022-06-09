<?php
include 'header.php';
include 'menu.php';
include 'config/koneksi.php';
$id = $_GET['id'];
$sql = mysqli_fetch_assoc(mysqli_query($koneksi, "SELECT * FROM pemeriksaan WHERE id_pemeriksaan = $id "));

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
						<a href="edit_pemeriksaan.php">Pemeriksaan</a>
					</li>
				</ul>
			</div>
			<div class="row">
				<div class="col-md-12">
					<div class="card">
						<div class="card-header">
							<div class="card-title">Edit Pemeriksaan</div>
						</div>
						<div class="card-body">
							<div class="row">
								<div class="col-md-12 col-lg-12">
									<tr>
										<form action="" method="POST">
											<div class="form-group">
												<label for="exampleInputPassword1">Nama</label>
												<input type="text" name="nama" class="form-control" id="exampleInputPassword1" value="<?= $sql['id_sakit'] ?>">
											</div>
											<div class="form-group">
												<label for="exampleInputPassword1">Tanggal Sakit</label>
												<input type="date" name="tgl_sakit" class="form-control" id="exampleInputPassword1" value="<?= $sql['tgl_sakit'] ?>">
											</div>
											<div class="form-group">
												<label for="exampleInputPassword1">Tanggal Sembuh</label>
												<input type="date"  name="tgl_sembuh" class="form-control" id="exampleInputPassword1" value="<?= $sql['tgl_sembuh'] ?>">
											</div>
											<div class="form-check">
												<label for="">Status</label><br>
												<label class="form-radio-label">
													<input type="radio" class="form-radio-input" name="status" id="" value="sakit" <?php if($sql['status'] == 'sakit'){echo "checked";} ?>>
													<span class="form-radio-sign">Sakit</span>
												</label>
												<label class="form-radio-label ml-3">
													<input type="radio" class="form-radio-input" name="status" id="" value="sembuh" <?php if($sql['status'] == 'sembuh'){echo "checked";} ?>>
													<span class="form-radio-sign">Sembuh</span>
												</label>
											</div>
											<div class="form-check">
												<label for="">Kategori</label><br>
												<label class="form-radio-label">
													<input type="radio" class="form-radio-input" name="kategori" id="" value="berat" <?php if($sql['kategori'] == 'berat'){echo "checked";} ?> >
													<span class="form-radio-sign">Berat</span>
												</label>
												<label class="form-radio-label ml-3">
													<input type="radio" class="form-radio-input" name="kategori" id="" value="ringan" <?php if($sql['kategori'] == 'ringan'){echo "checked";} ?>>
													<span class="form-radio-sign">Ringan</span>
												</label>
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
		
		$nama = $_POST['nama'];
		$tgl_sakit = $_POST['tgl_sakit'];
		$tgl_sembuh = $_POST['tgl_sembuh'];
		$status = $_POST['status'];
		$kategori = $_POST['kategori'];

		$sql = mysqli_query($koneksi, " UPDATE pemeriksaan SET id_sakit ='$id_sakit', tgl_sakit ='$tgl_sakit', tgl_sembuh ='$tgl_sembuh', status ='$status', kategori ='$kategori' WHERE id_pemeriksaan = $id");

		if ($sql) {
			?>
			<script type="text/javascript">
				alert ("Data Berhasil Di Update");
				window.location.href="pemeriksaan.php";
			</script>      
			<?php  
		}
	}
	?>