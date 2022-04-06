<!-- Begin page content -->
<main role="main" class="flex-shrink-0">
  <div class="container">
  	<h3>Tambah Data Barang</h3>
  	<hr>

    <!-- form tambah barang -->
    <form method="post" action="<?= base_url('barang/tambah_aksi');?>">
      <div class="form-group">
        <label>Nama Barang</label>
        <input type="text" name="nama_barang" class="form-control" value="<?= set_value('nama_barang'); ?>">
        <small><span class="text-danger"><i><?= form_error('nama_barang'); ?></i></span></small>
      </div>
      <div class="form-group">
        <label>Satuan</label>
        <input type="text" name="satuan" class="form-control" value="<?= set_value('satuan'); ?>">
        <small><span class="text-danger"><i><?= form_error('satuan'); ?></i></span></small>
      </div>
      <div class="form-group">
        <label>Stok</label>
        <input type="text" name="stok" class="form-control" value="<?= set_value('stok'); ?>">
        <small><span class="text-danger"><i><?= form_error('stok'); ?></i></span></small>
      </div>
      <div class="form-group">
        <label>Harga Satuan</label>
        <input type="number" name="harga_satuan" class="form-control">
      </div>

      <button type="submit" class="btn btn-primary">Simpan Data</button>
      <a href="<?= base_url('barang'); ?>" class="btn btn-danger">Batal/Kembali</a>
    </form>

  </div>
</main>