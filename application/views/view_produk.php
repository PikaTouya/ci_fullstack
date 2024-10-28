<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Data Produk</title>
</head>
<body>
    <h2>Menampilkan Data Produk</h2>
    <table border="1" cellspacing="0" cellpading="0">
        <tr>
            <td>No</td>
            <td>ID Produk</td>
            <td>Nama Produk</td>
            <td>ID Kategori</td>
            <td>ID Satuan</td>
            <td>Barcode</td>
            <td>Harga Beli</td>
            <td>Harga Pokok</td>
            <td>Harga Jual</td>
            <td>Status</td>
        </tr>

        <?php foreach ($data->result() as $i => $row) :?>
            <tr>
                <td><?= ++$i; ?></td>
                <td><?= $row->id_produk; ?></td>
                <td><?= $row->nama_produk; ?></td>
                <td><?= $row->id_kategori; ?></td>
                <td><?= $row->id_satuan; ?></td>
                <td><?= $row->barcodek; ?></td>
                <td><?= $row->harga_beli; ?></td>
                <td><?= $row->harga_pokok; ?></td>
                <td><?= $row->harga_Jual; ?></td>
                <td><?= $row->is_status ? 'Stock masih ada' : 'Stock sudah habis'; ?></td>
            </tr> 
        <?php endforeach;?>
    </table>
</body>
</html>