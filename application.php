
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8" name="viewport" content="width=device-width, initial-scale=1" />
 <!-- Font Awesome Icons -->
 <link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css">
  <!-- overlayScrollbars -->
  <link rel="stylesheet" href="plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="dist/css/adminlte.min.css">
  <!-- Google Font: Source Sans Pro -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
  <link rel="stylesheet" href="plugins/datatables-bs4/css/dataTables.bootstrap4.css">
	<style>
		#images_preview {
			height: 300px !important;
			width: 300px !important;
			padding-left: 5px !important;
		}
	</style>
</head>

<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">Aero</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
    </ul>
    <!-- <div class="form-inline my-2 my-lg-0">
      <button class="btn btn-outline-success my-2 my-sm-0" onclick="history.back()">Search</button>
    </div> -->
  </div>
</nav>

		<div class="container">
        <h3 class="text-primary">Application Form</h3>
		<hr style="border-top:1px dotted #ccc;" />
		<form id="application_form" enctype="multipart/form-data">
			<div class="row">
				<div class="col-lg-12">
					<div class="form-group">
						<label>Student Name</label>
						<input type="text" class="form-control" name="studentname" required="required" />
					</div>

					<div class="form-group">
						<label>ID Number</label>
						<input type="number" class="form-control" name="idnumber" required="required" />
					</div>

					<div class="form-group">
						<label>Program</label>
						<!-- <input type="text" class="form-control" name="program" required="required" /> -->
						<select name="program" class="form-control">
							<option value="Bachelor of Science in Aeronautical Engineering">Bachelor of Science in Aeronautical Engineering</option>
							<option value="Bachelor of Science in Air Transportation major in Advance Flying">Bachelor of Science in Air Transportation major in Advance Flying</option>
							<option value="Bachelor of Science in Aircraft Maintenance Technology">Bachelor of Science in Aircraft Maintenance Technology</option>
							<option value="Associate in Aircraft Maintenance Technology">Associate in Aircraft Maintenance Technology</option>
							<option value="Bachelor of Science in Aviation Electronics Technology">Bachelor of Science in Aviation Electronics Technology</option>
							<option value="Associate in Aviation Electronics Technology">Associate in Aviation Electronics Technology</option>
							<option value="Bachelor of Science in Aviation Communication major in Flight Operations">Bachelor of Science in Aviation Communication major in Flight Operations</option>
							<option value="Bachelor of Science in Aviation Satety and Security Management">Bachelor of Science in Aviation Satety and Security Management</option>
							<option value="Bachelor of Science in Aviation Logistics">Bachelor of Science in Aviation Logistics</option>
							<option value="Bachelor of Science in Aviation Tourism major in Travel Management">Bachelor of Science in Aviation Tourism major in Travel Management</option>
							<option value="Bachelor of Science in Aviation Information System">Bachelor of Science in Aviation Information System</option>
							<option value="Bachelor of Science in Aviation Information Technology">Bachelor of Science in Aviation Information Technology</option>
						</select>
					</div>

					<div class="form-group">
						<label>Contact Number</label>
						<input type="number" class="form-control" name="contact_number" required="required" />
					</div>

					<div class="form-group">
						<label>Email</label>
						<input type="email" class="form-control" name="email" required="required" />
					</div>

					<h3 class="text-primary">Parent or Guardian</h3>
					<hr style="border-top:1px dotted #ccc;" />

					<div class="form-group">
						<label>Parent or Guardian Name</label>
						<input type="text" class="form-control" name="parentname" required="required" />
					</div>

					<div class="form-group">
						<label>City and Provincial Address</label>
						<input type="text" class="form-control" name="parent_address" required="required" />
					</div>

					<div class="form-group">
						<label>Parent or Guardian Contact Number</label>
						<input type="text" class="form-control" name="parent_contact" required="required" />
					</div>


					<div class="form-group">
						<label>Floor</label>
						<select name="floor" id="floor" class="form-control">
							<option value="">-- select --</option>
							<option value="4th Floor">4th Floor</option>
							<option value="3rd Floor">3rd Floor</option>
							<option value="2nd Floor">2nd Floor</option>
							<option value="Ground Floor">Ground Floor</option>
						</select>
					</div>

					<div class="form-group">
						<label>Room</label>
						<select name="room" id="room" class="form-control" disabled>
							<option value="">-- select --</option>
							<!-- <option value="Room 409">Room 409</option>
							<option value="Room 408">Room 408</option>
							<option value="Room 407">Room 407</option>
							<option value="Room 406">Room 406</option>
							<option value="Room 405">Room 409</option>
							<option value="Room 404">Room 408</option>
							<option value="Room 403">Room 407</option>
							<option value="Room 402">Room 406</option>
							<option value="Room 401">Room 401</option> -->
						</select>
					</div>

					<div class="form-group">
						<label for="attachment">Attachments</label>
						<input type="file" class="form-control" name="attachment[]" id="attachment" multiple>
					</div>

					<input type="submit" class="btn btn-primary" value="Apply">

				</div>
			</div>
			
		</form>
		<div class="row">
			<div class="col-lg-12">
				<div id="images_preview" class="p-4"></div>

			</div>
		</div>
        </div>
<script src="plugins/jquery/jquery.min.js"></script>
<script src="plugins/jquery-mousewheel/jquery.mousewheel.js"></script>
<script src="plugins/raphael/raphael.min.js"></script>
<script src="plugins/jquery-mapael/jquery.mapael.min.js"></script>
<script src="plugins/jquery-mapael/maps/usa_states.min.js"></script>
<!-- ChartJS -->
<script src="plugins/chart.js/Chart.min.js"></script>
<script src="plugins/datatables/jquery.dataTables.js"></script>
<script src="plugins/datatables-bs4/js/dataTables.bootstrap4.js"></script>
<script src="script/swal.js"></script>
<!-- PAGE SCRIPTS -->
<script src="dist/js/pages/dashboard2.js"></script>
		<script>
			document.getElementById("floor").addEventListener("change", function() {
				var first_select_value = this.value;
				var second_select = document.getElementById("room");
				second_select.innerHTML = "";
				second_select.disabled = true;

				if (first_select_value === "4th Floor") {
					second_select.innerHTML =
						"<option value='Room 409'>Room 409</option><option value='Room 408'>Room 408</option><option value='Room 407'>Room 407</option><option value='Room 406'>Room 406</option><option value='Room 405'>Room 405</option><option value='Room 404'>Room 404</option><option value='Room 403'>Room 403</option><option value='Room 402'>Room 402</option><option value='Room 401'>Room 401</option>"

					;
				} else if (first_select_value === "3rd Floor") {
					second_select.innerHTML =
						"<option value='Room 309'>Room 309</option><option value='Room 308'>Room 308</option><option value='Room 307'>Room 307</option><option value='Room 306'>Room 306</option><option value='Room 305'>Room 305</option><option value='Room 304'>Room 304</option><option value='Room 303'>Room 303</option><option value='Room 302'>Room 302</option><option value='Room 301'>Room 301</option>"

					;
				} else if (first_select_value == "2nd Floor") {
					second_select.innerHTML =
						"<option value='Room 209'>Room 209</option><option value='Room 208'>Room 208</option><option value='Room 207'>Room 207</option><option value='Room 206'>Room 206</option><option value='Room 205'>Room 205</option><option value='Room 204'>Room 204</option><option value='Room 203'>Room 203</option><option value='Room 202'>Room 202</option><option value='Room 201'>Room 201</option>"

					;
				} else if (first_select_value == "Ground Floor") {
					second_select.innerHTML =
						"<option value='Room 109'>Room 109</option><option value='Room 108'>Room 108</option><option value='Room 107'>Room 107</option><option value='Room 106'>Room 106</option><option value='Room 105'>Room 105</option><option value='Room 104'>Room 104</option><option value='Room 103'>Room 103</option><option value='Room 102'>Room 102</option><option value='Room 101'>Room 101</option>"

					;
				}

				if (second_select.innerHTML !== "") {
					second_select.disabled = false;
				}

			})
			$(document).ready(function() {
				$('#application_form').submit(function(e) {
					e.preventDefault();

					var formData = new FormData(this);

					$.ajax({
						url: 'phpfunction/myfunction.php',
						type: 'POST',
						data: formData,
						contentType: false,
						processData: false,
						success: function(response) {
							$('#images_preview').html(response);
							Swal.fire(
								'Success!',
								'Your application has been submitted, wait for admin approval.',
								'success'
							)
							setTimeout(function() {
								location.reload();
							}, 2000);
						}
					})
				})
			})
		</script>
</body>

</html>