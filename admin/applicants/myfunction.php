<?php
$conn = mysqli_connect('localhost', 'root', '', 'cms_db');

if (isset($_POST['status'])) {
    $id = $_POST['id'];
    $remarks = $_POST['remarks'];
    $idnumber = $_POST['idnumber'];
    $studentname = $_POST['studentname'];


    $query = "UPDATE applicant SET status = 1, remarks = '$remarks' WHERE id = '$id'";
    $result = $conn->query($query);

    $insert = "INSERT INTO client_list(client_code, password, fullname) VALUES ('$idnumber', '$idnumber', '$studentname')";
    $result = $conn->query($insert);
}

?>