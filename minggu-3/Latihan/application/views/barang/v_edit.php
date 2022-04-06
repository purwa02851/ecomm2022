<!-- Begin page content -->
<main role="main" class="flex-shrink-0">
  <div class="container">
  	<h3>Edit Data Barang</h3>
  	<hr>
    <?php foreach ($barang as $row) { ?>
    <!-- form tambah barang -->
    <form method="post" action="<?= base_url('barang/edit_aksi');?>">
      <input type="hidden" name="id" value="<?= $row->id_barang; ?>">
      <div class="form-group">
        <label>Nama Barang</label>
        <input type="text" name="nama_barang" class="form-control" value="<?= $row->nama_barang;?>">
      </div>
      <div class="form-group">
        <label>Satuan</label>
        <input type="text" name="satuan" class="form-control" value="<?= $row->satuan;?>">
      </div>
      <div class="form-group">
        <label>Stok</label>
        <input type="number" name="stok" class="form-control" value="<?= $row->stok;?>">
      </div>
      <div class="form-group">
        <label>Harga Satuan</label>
        <input type="number" name="harga_satuan" class="form-control" value="<?= $row->harga_satuan;?>">
      </div>

      <button type="submit" class="btn btn-primary">Update Data</button>
      <a href="<?= base_url('barang'); ?>" class="btn btn-danger">Batal/Kembali</a>
    </form>
  <?php } ?>
  </div>
</main>