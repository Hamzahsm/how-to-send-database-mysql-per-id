<?php
$conn = mysqli_connect('localhost', 'root', '', 'ytb');
if (mysqli_connect_errno()) {
    echo "Failed connect to database because : " . mysqli_connect_error();
}

function query($query)
{
    global $conn;

    $result = mysqli_query($conn, $query);
    $emptyarray = [];

    while ($datas = mysqli_fetch_assoc($result)) {
        $emptyarray[] = $datas;
    }

    return $emptyarray;
}

$query = query("SELECT * FROM customer_id");

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>how to send database mysql per id</title>
</head>

<body>

    <table>
        <thead>
            <tr>
                <th>No</th>
                <th>Name</th>
                <th>Detail</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($query as $data) : ?>
                <?php $i = 1; ?>
                <tr>
                    <td><?= $i ?></td>
                    <td><?= $data['name'] ?></td>
                    <td><a href="./detail.php?<?= $data['id']; ?>"></a></td>
                </tr>
                <?php $i++; ?>
            <?php endforeach; ?>
        </tbody>
    </table>

</body>

</html>