<html>
    <head>
        <title>Upload File</title>
    </head>
    <body>

    <h3>Selamat file anda berhasil diupload!</h3>

        <ul>
        <?php foreach ($upload_data as $item => $value):?>
        <li><?php echo $item;?>: <?php echo $value;?></li>
        <?php endforeach; ?>
        </ul>

        <p><?php echo anchor('upload', 'Upload Another File!'); ?></p>

    </body>
</html>