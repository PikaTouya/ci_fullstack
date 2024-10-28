<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Data Kategori Produk</title>
</head>
<body>
    <h2>Menampilkan Data Kategori</h2>
    <table border="1" cellspacing="0" cellpading="0">
        <tr>
            <td>No</td>
            <td>ID</td>
            <td>Nama Kategori</td>
        </tr>

        <?php foreach ($data->result() as $i => $row) :?>
            <tr>
                <td><?= ++$i; ?></td>
                <td><?= $row->id_kategori; ?></td>
                <td><?= $row->nama_kategori; ?></td>
            </tr> 
        <?php endforeach;?>
    </table>
</body>
</html>