<!-- Begin page content -->
<main role="main" class="flex-shrink-0">
  <div class="container">
  	<h3>Data Barang</h3>
  	<hr>
    <a href="<?= base_url('barang/tambah');?>" class="btn btn-primary" style="margin-bottom: 10px">Tambah Data</a>
  	<table class="table table-bordered">
  		<thead>
  			<tr>
  				<th>No.</th>
  				<th>Nama Barang</th>
  				<th>Satuan</th>
  				<th>Stok</th>
  				<th>Harga Barang</th>
          <th>Aksi</th>
  			</tr>
  		</thead>
  		<tbody>
  			<?php $no=1; foreach($barang as $row) { ?>
  				<tr>
  					<td class="text-center"><?= $no; ?></td>
  					<td><?= $row->nama_barang; ?></td>
  					<td><?= $row->satuan; ?></td>
  					<td><?= $row->stok; ?></td>
  					<td><?= $row->harga_satuan; ?></td>
            <td>
              <a href="<?= base_url('barang/edit/').$row->id_barang;?>" class="btn btn-warning">Edit</a>
              <a href="<?= base_url('barang/hapus/').$row->id_barang; ?>" class="btn btn-danger">Hapus</a>
            </td>
  				</tr>
  			<?php $no++; } ?> 
  		</tbody>
  	</table>
  </div>
</main>