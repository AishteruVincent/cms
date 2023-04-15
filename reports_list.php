<?php if($_settings->chk_flashdata('success')): ?>
<script>
	alert_toast("<?php echo $_settings->flashdata('success') ?>",'success')
</script>
<?php endif;?>




<!-- Font Awesome -->
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css">
<!-- Ionicons -->
<link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
<!-- DataTables -->
<link rel="stylesheet" href="plugins/datatables-bs4/css/dataTables.bootstrap4.css">
<!-- Theme style -->
<link rel="stylesheet" href="dist/css/adminlte.min.css">
<!-- Google Font: Source Sans Pro -->
<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
<style>
    input[type="text"] {
  border: none;
  border-bottom: 2px solid gray;
  width: 10%;
  font-size: 16px;
  outline: none;
}

input[type="text"]:focus {
  border-bottom-color: blue;
}
</style>
<body class="hold-transition sidebar-collapsed">
   <div class="card card-outline card-primary">
	<div class="card-header">
		<h3 class="card-title">List of Reports</h3>
		<div class="card-tools">
		</div>
		 <div class="card-header">
                                <div class="card-toolbar" style="float:right;">
                                <button  type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal3">
                                    Create Report
                                </button>
                                </div>
                            </div>
	</div>
	<div class="card-body">
		<div class="container-fluid">
        <div class="container-fluid">
			<table class="table table-bordered table-striped">
				<colgroup>
					<col width="5%">
					<col width="15%">
					<col width="20%">
					<col width="20%">
					<col width="10%">
					<col width="15%">
					<col width="15%">
				</colgroup>
				<thead>
					<tr>
						<th>#</th>
						<th>Date Created</th>
						<th>Name</th>
						<th>Concern</th>
						<th>Floor</th>
						<th>Room</th>
						<th>Status</th>
					</tr>
				</thead>
				<tbody>
					<?php 
					$i = 1;
				
					$qry = $conn->query("SELECT r.*,c.fullname  from `reports` r inner join client_list c on r.client_id = c.id where r.client_id = '{$_settings->userdata('id')}' order by unix_timestamp(r.date_created) desc ");

						while($row = $qry->fetch_assoc()):
					?>
						<tr>
							<td class="text-center"><?php echo $i++; ?></td>
							<td><?php echo date("Y-m-d H:i",strtotime($row['date_created'])) ?></td>
							<td><?php echo $row['name'] ?></td>
							<td><?php echo $row['concern'] ?></td>
                            <td><?php echo $row['floor'] ?></td>
                            <td><?php echo $row['room'] ?></td>
							<td class="text-center">
                                <?php if($row['status'] == 1): ?>
                                    <span class="badge badge-success rounded-pill">Done</span>
                                <?php else: ?>
                                    <span class="badge badge-danger rounded-pill">Pending</span>
                                <?php endif; ?>
                            </td>
						</tr>
					<?php endwhile; ?>
				</tbody>
			</table>
		</div>
		</div>
	</div>
</div>
</body>
<!-- Modal -->
<div class="modal fade bd-example-modal-lg" id="exampleModal3" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg" role="document">
    <form action ="" id="" >
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Service Report Form</h5>
      </div>
      <div class="modal-body">
        <p style="text-align: right;">
        <?php 
                $srf_no = "SRF-" . substr(uniqid(), -6);
                echo $srf_no;
                ?>
                <input type="hidden" id="srf_no" value="<?php echo $srf_no?>">
        </div>
        </p>
        <div class="row pt-0">
            <div class="col-md-9 pl-4">
                
                
                <p>Requested By: <input type="textarea" id="name" placeholder="Enter your name" required=""></p>
                
            </div>
            
            <div class="col-md-9 pl-4">
                
                
                <p>Client Code: <input type="hidden" id="username" placeholder="" required="" value="<?php ?>"></p>
                
            </div>
            
               
            
            <div class="col-md-3 pl-4">
                <p>Date: <?php echo date("Y-m-d"); ?></p>
                <input type="hidden"  value="<?php echo date("Y-m-d");?>">
            </div>
        </div>

        <div class="row">
            <div class="col-sm pl-4">
                Floor: <input type="text" id="floor" required>   Room No: <input type="text" id="room" required/>
            </div>
        </div>

        <div class="row">
            <div class="col-md-6 pt-3 pl-4">
                <p>Nature of Concern: </p>
            </div>

          
        </div>

        <div class="row justify-content-center">
                <div class="col-lg-12 pt-3 pl-4 align-items-center">
                    <div class="row">
                        <div class="col-md-4">
                            <input type="" placeholder="Assistance" required >
                        </div>
                        <div class="col-md-4">
                            <input type="" placeholder="Mechanical"required>
                        </div>
                        <div class="col-md-4">
                            <input type="" placeholder="Installation"required>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-4">
                            <input type="" placeholder="Civil"required>
                        </div>
                        <div class="col-md-4">
                            <input type="" placeholder="Repair"required>
                        </div>
                        <div class="col-md-4">
                            <input type="" placeholder="Plumbing"required>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-4">
                            <input type="" placeholder="Inspection"required>
                        </div>
                        <div class="col-md-4">
                            <input type="" placeholder="Electrical"required>
                        </div>
                        <div class="col-md-4">
                            <input type="" placeholder="Others"required>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12 pt-3 pl-4">
                Specify concerns: 
                    <br>    
                <input type="text" id="specifyconcern" required> 
                </div>
            </div>
      <div class="modal-footer">
       <button type="button" class="btn btn-primary submit_report">Submit</button> 
       <button type="button" class="btn btn-secondary" data-dismiss="modal" >Close</button>
      </div>
    </div>
    </form>
   
  </div>
</div>
<script>
    window.setTimeout(function() {
        $(".alert").fadeTo(500, 0)
    }, 2000);
</script>
<!-- jQuery -->
<script src="plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- DataTables -->
<script src="plugins/datatables/jquery.dataTables.js"></script>
<script src="plugins/datatables-bs4/js/dataTables.bootstrap4.js"></script>
<!-- AdminLTE App -->
<script src="dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="dist/js/demo.js"></script>
<!-- page script -->
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script>

    $(document).ready(function() {
        $('.submit_report').click(function() {
            var name = $('#name').val();
            var clientid = $('#clientid').val();
            var username = $('#username').val();
            var srf_no = $('#srf_no').val();
            var room = $('#room').val();
            var floor = $('#floor').val();
            var specifyconcern = $('#specifyconcern').val();

            console.log(name, '\n', username, '\n', srf_no, '\n', room, '\n', floor, '\n', specifyconcern)

            $.ajax({
                    url:"phpfunction/function.php",
                    method: 'post',
                    type: 'post',
                    data: {
                        submit_report: 1,
                        name: name,
                        clientid : clientid,
                        username: username,
                        srf_no: srf_no,
                        room : room,
                        floor : floor,
                        specifyconcern : specifyconcern
                    },
                    success: function(response) {
                        Swal.fire(
                            'Success',
                            'Reports has been saved.',
                            'success'
                        )
                        setTimeout(() => {
                            location.reload();
                        }, 2000);
                    }
                })
        })
    })
</script>
<script>
    $(document).ready(function() {
        $('#example').DataTable();
    });
</script>
<script>
    $(function() {
        $("#example1").DataTable();
        $('#example2').DataTable({
            "paging": true,
            "lengthChange": false,
            "searching": false,
            "ordering": true,
            "info": true,
            "autoWidth": false,
        });
    });
</script>