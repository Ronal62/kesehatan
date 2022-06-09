<?php
include 'header.php';
include 'menu.php';
include 'config/koneksi.php';
?>
<div class="main-panel">
	<div class="content">
		<div class="page-inner">
			<div class="page-header">
				<h4 class="page-title">Data Obat Masuk</h4>
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
							<div class="d-flex align-items-center">
								<a href="tambah_obat_masuk.php" class="btn btn-primary btn-sm">
									<span class="btn-label">
										<i class="fa fa-plus"></i>
									</span>
									Tambah Data
								</a>
							</div>
						</div>
						<div class="card-body">
							<div class="table-responsive">
								<table id="basic-datatables" class="display table table-striped table-hover" >
									<thead>
										<tr>
											<th>No</th>
											<th>Nama Obat</th>
											<th>Tgl Masuk</th>
											<th>Jumlah</th>
											<th style="text-align: center;">Aksi</th>
										</tr>
									</thead>
									<tbody>
										<?php
										$no=1;
										$sql = mysqli_query($koneksi, " SELECT a.tgl_masuk, a.jml_masuk, a.id_obat_masuk, b.nama_obat FROM obat_masuk AS a
											JOIN obat  AS b ON a.id_obat = b.id_obat");
										while ($row = mysqli_fetch_assoc($sql)) {
											?>
											<tr>
												<td><?= $no ?></td>
												<td><?= $row['nama_obat'] ?></td>
												<td><?= $row['tgl_masuk'] ?></td>
												<td><?= $row['jml_masuk'] ?></td>
												<td style="text-align: center;">
													<div class="form-button-action">
														<a href="<?= 'edit_obat_masuk.php?id=' . $row['id_obat_masuk']?>" type="button" data-toggle="tooltip" title="" class="btn btn-link btn-primary btn-lg" data-original-title="Edit Task">
															<i class="fa fa-edit"></i>
														</a>
														<a href="<?= 'hapus_obat_masuk.php?id=' . $row['id_obat_masuk']?>" type="button" data-toggle="tooltip" title="" class="btn btn-link btn-danger" data-original-title="Remove">
															<i class="fa fa-times"></i>
														</a>
													</div>
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

