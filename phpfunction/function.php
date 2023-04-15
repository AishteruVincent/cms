<?php

$conn = mysqli_connect('localhost', 'root', '', 'cms_db');	
	if(isset($_POST['submit_report'])) {
		$firstname = $_POST['name'];
		$username = $_POST['username'];
		$srf_no = $_POST['srf_no'];
		$room = $_POST['room'];
		$floor = $_POST['floor'];
		$specifyconcern = $_POST['specifyconcern'];

		// $concern = $floor  + " " + $room + " " + $specifyconcern;




		$insert = "INSERT INTO reports(name, username, concern, srfnumber, room, floor) VALUES ('$firstname', '$username', '$specifyconcern', '$srf_no', '$room','$floor')";
		$result = mysqli_query($conn, $insert);

		printf($result);


	}

?>