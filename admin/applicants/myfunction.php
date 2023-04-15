<?php
$conn = mysqli_connect('localhost', 'u853565338_aero', 'Testpassw0rd!', 'u853565338_aero');

if (isset($_POST['submit_applicant'])) {
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