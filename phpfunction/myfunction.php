<?php

$conn = mysqli_connect('localhost', 'root', '', 'cms_db');	
	if(isset($_FILES['attachment'])) {
		$studentname = $_POST['studentname'];
		$idnumber = $_POST['idnumber'];
		$program = $_POST['program'];
		$contactnumber = $_POST['contact_number'];
		$email = $_POST['email'];
		$parentorguardianname = $_POST['parentname'];
		$cityandprovinceaddress = $_POST['parent_address'];
		$parentcontactnumber = $_POST['parent_contact'];
		$attachment = $_FILES['attachment'];
		$selectFloor = $_POST['floor'];
		$selectRoom = $_POST['room'];


		$fquery = $conn->query("INSERT INTO applicant(studentname, idnumber, program, contact_number, email, parentname, parent_address, parent_contact,  floor, room) 
		VALUES('$studentname', '$idnumber', '$program', '$contactnumber', '$email', '$parentorguardianname', '$cityandprovinceaddress', '$parentcontactnumber',  '$selectFloor', '$selectRoom')");
		$applicant_id = $conn->insert_id;

        $select = "SELECT username FROM users WHERE username = '$idnumber'";
        $result = mysqli_query($conn, $select);

        if(mysqli_num_rows($result) > 0) {
        } else {
            $insertdata = $conn->query("INSERT INTO users (username, password) VALUES ('$idnumber', '$idnumber')");
        }

		
	



		for($i = 0; $i < count($attachment['name']); $i++) {
			$image_name = $attachment['name'][$i];
			$image_tmp = $attachment['tmp_name'][$i];
			$image_size = $attachment['size'][$i];
			$image_error = $attachment['error'][$i];

			if($image_error == 0) {
				$new_image_name = time() . $image_name;
				$destination = '../uploads/attachment/' . $new_image_name;


				if (move_uploaded_file($image_tmp, $destination)) {
					$query  =
					 $conn->query("INSERT INTO  applicant_attachment (applicant_id, attachment) VALUES ($applicant_id,'$new_image_name')");

					echo '<img src="aero/' . $destination . '" width="100">';
				}
			}
		}
	}



?>