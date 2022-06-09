<?php
include 'header.php';
include 'menu.php';
include 'config/koneksi.php';
?>
<div class="main-panel">
	<div class="content">
		<div class="page-inner">
			<div class="page-header">
				<h4 class="page-title">E - HEALTHY</h4>
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
							<a href="tambah_sakit.php" class="btn btn-primary">
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
											<th>DS</th>
											<th>DO</th>
											<th>Status</th>
											<th style="text-align: center;">Aksi</th>
										</tr>
									</thead>
									<tbody>
										<?php
										$no=1;
										$sql = mysqli_query($koneksi,"SELECT * FROM tb_santri JOIN sakit ON tb_santri.nis = sakit.nis");
										while ($row = mysqli_fetch_assoc($sql)) {
											?>
											<tr>
												<td><?= $no ?></td>
												<td><?= $row['nis'] ?></td>
												<td><?= $row['nama'] ?></td>
												<td><?= $row['ds'] ?></td>
												<td><?= $row['do'] ?></td>
												<td><?= $row['status'] ?></td>
												<td style="text-align: center;">
													<div class="form-button-action">
														<a href="<?= 'edit_sakit.php?id=' . $row['id_sakit']?>" type="button" data-toggle="tooltip" title="" class="btn btn-link btn-primary btn-lg" data-original-title="Edit Task">
															<i class="fa fa-edit"></i>
														</a>
														<a href="<?= 'hapus_sakit.php?id=' . $row['id_sakit']?>" type="button" data-toggle="tooltip" title="" class="btn btn-link btn-danger" data-original-title="Remove">
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
</div>
