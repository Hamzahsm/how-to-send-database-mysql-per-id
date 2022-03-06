<?php
if (isset($_GET['id'])) {
    $id = $_GET['id'];
} else {
    die("Error, No id selected!");
}
$conn = mysqli_connect("localhost", "root", "", "ytb");
$query    = mysqli_query($conn, "SELECT * FROM customer_id WHERE id='$id'");
$result    = mysqli_fetch_array($query);
?>



<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>
    <table>
        <tbody>
            <tr>
                <th>Name</th>
                <td><?php $result['name'] ?></td>
            </tr>

            <tr>
                <th>Order</th>
                <td><?php $result['order'] ?></td>
            </tr>

            <tr>
                <th>Address</th>
                <td><?php $result['address'] ?></td>
            </tr>

            <tr>
                <th>Telepone</th>
                <td><?php $result['telepone'] ?></td>
            </tr>
        </tbody>
    </table>
</body>

</html>