<?php

$conn = mysqli_connect('localhost', 'u853565338_aero', 'Testpassw0rd!', 'u853565338_aero');	
	if(isset($_POST['submit_report'])) {
		$name = $_POST['name'];
		$clientid = $_POST['client_id'];
		$username = $_POST['username'];
		$srf_no = $_POST['srf_no'];
		$room = $_POST['room'];
		$floor = $_POST['floor'];
		$specifyconcern = $_POST['specifyconcern'];

		// $concern = $floor  + " " + $room + " " + $specifyconcern;




		$insert = $conn->query("INSERT INTO reports(client_id, name, username, concern, srfnumber, floor, room) VALUES ('$clientid', '$name', '$username', '$specifyconcern', '$srf_no', '$floor', '$room')");
		$result = mysqli_query($conn, $insert);

		printf($result);


	}

?>