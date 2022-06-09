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
							<a href="tambah_contoh.php" class="btn btn-primary">
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
											<th>NIS</th>
											<th>Nama</th>
											<th>Alamat</th>
											<th>Kelas</th>
											<th style="text-align: center;">Aksi</th>
										</tr>
									</thead>
									<tbody>
										<?php
										$no=1;
										$sql = mysqli_query($koneksi, "SELECT * FROM siswa");
										while ($row = mysqli_fetch_assoc($sql)) {
											?>
											<tr>
												<td><?= $no ?></td>
												<td><?= $row['nis'] ?></td>
												<td><?= $row['nama'] ?></td>
												<td><?= $row['alamat'] ?></td>
												<td><?= $row['kelas'] ?></td>
												<td style="text-align: center;">
													<button type="button" class="btn btn-danger" id="alert_demo_8">Delete</button>
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
