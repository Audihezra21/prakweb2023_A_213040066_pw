<?php
  if (!empty($_GET['q'])) {
    switch ($_GET['q']) {
      case 'info':
        phpinfo(); 
        exit;
      break;
    }
  }
?>

<?php
$servername = "localhost";
$username = "root";
$password = "";


$conn = mysqli_connect("localhost", "root", "","buku");
// Check connection
$result = mysqli_query($conn,"SELECT * FROM buku")
?>
<!DOCTYPE html>
<html>
    <head>
        <title>Laragon</title>

        <link href="https://fonts.googleapis.com/css?family=Karla:400" rel="stylesheet" type="text/css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <style>
            html, body {
                height: 100%;
            }

            body {
                margin: 0;
                padding: 0;
                width: 100%;
                display: table;
                font-weight: 100;
                font-family: 'Karla';
            }

            .container {
                text-align: center;
                display: table-cell;
                vertical-align: middle;
            }

            .content {
                text-align: center;
                display: inline-block;
            }

            .title {
                font-size: 96px;
            }

            .opt {
                margin-top: 30px;
            }

            .opt a {
              text-decoration: none;
              font-size: 150%;
            }
            
            a:hover {
              color: red;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <div class="content">
                <div class="title" title="Laragon">10 Buku Populer
                </div>
                <table class="table table-sm table-dark">
  <thead>
    <?php $i = 1; ?>
    
    <tr>
      <th scope="col">No</th>
      <th scope="col">Judul Buku</th>
      <th scope="col">Penulis Buku</th>
      <th scope="col">Penerbit Buku</th>
      <th scope="col">Tahun Buku</th>
      <th scope="col">Edit</th>
    </tr>
  </thead>
  <tbody>
  <?php while($row = mysqli_fetch_assoc($result)): ?>
    <tr>
      <td><?= $row["id_buku"]; ?></td>
      <td><?= $row["judul_buku"]; ?></td>
      <td><?= $row["penulis_buku"]; ?></td>
      <td><?= $row["penerbit_buku"]; ?></td>
      <td><?= $row["tahun_terbit"]; ?></td>
      <td>
        <a href="">Ubah</a>
        |
        <a href="">Hapus</a>
      </td>
    </tr>
    <?php endwhile; ?>

  </tbody>
</table>
     


    </body>
</html>