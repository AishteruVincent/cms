<?php 

error_reporting(E_ALL ^ E_NOTICE);
//include 'header.php';
//include '/phpfunction/loginfunction.php';
session_start();
if(!isset($_SESSION['username'])){
  header("Location: ../login.php");
}
?>


<!-- Font Awesome -->
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
<body class="hold-transition sidebar-mini layout-fixed layout-navbar-fixed layout-footer-fixed">
    <div class="wrapper">
        <!-- Navbar -->
        <?php// include 'nav.php'; ?>
        <!-- /.navbar -->

        <!-- Main Sidebar Container -->
        <?php //include 'aside.php'; ?>

        <div class="content-wrapper">
            <div class="content-header">
                <div class="container-fluid">
                    <div class="row mb-2">
                        <div class="col-sm-6">
                            <h1 class="m-0 text-dark">List of Reports</h1>
                        </div><!-- /.col -->
                        <div class="col-sm-6">
                            <ol class="breadcrumb float-sm-right">
                                <li class="breadcrumb-item"><a href="dashboard.php">Home</a></li>
                                <li class="breadcrumb-item active">List of Reports</li>
                            </ol>
                        </div><!-- /.col -->
                    </div><!-- /.row -->
                </div><!-- /.container-fluid -->
                <button class="btn btn-info" type="submit" hidden><a href="add_course.php" class="text-white">Add New Invoice</a></button>

            </div><!-- /.content-header -->

          
            <section class="content">
          
                <div class="container-fluid">
                    <div class="row">
                        <div class="card col-12">
                            <div class="card-header">
                                <div class="card-toolbar" style="float:right;">
                                <button  type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal3">
                                    Create Report
                                </button>
                                </div>
                            </div>

                            <div class="card-body">
                                <table id="example1" class="table table-bordered table-striped">
                                    <thead>
                                        <tr>
                                            <th>Date </th>
                                            <th>Concern</th>
                                            <th>Status</th>
                                        </tr>
                                    </thead>

                                    <tbody>
                                        <?php	
                                        $result = mysqli_query($conn,"SELECT *  from `reports`");
                                    
                                        ?>
                                        <?php while ($row = $result->fetch_assoc()) : ?>
                                            <tr>
                                                <td class="text-right">
                                                <?php echo date("Y-m-d H:i", strtotime($row['date_created'])) ?></td>
                                                <td>
                                                    <?php echo $row['concern'];?>
                                                </td>
                                                <td>
                                                    <?php echo $row['status']?>
                                                </td>
                                            </tr>
                                        <?php endwhile; ?>
                                    </tbody>

                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>

    </div>
</body>
<!-- Modal -->
<div class="modal fade bd-example-modal-lg" id="exampleModal3" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg" role="document">
    <form >
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
            <?php
                $sellectsc = $conn->query("SELECT * from client_list where client_code = '".$_SESSION['username']."'");

            ?>
            <?php while($row = $sellectsc->fetch_assoc()):?>
                <p>Requested By: <?php echo $_SESSION['fullname'];?></p>
                <input type="hidden" id="firstname" value="<?php echo $row['fullname']?>">
                <input type="hidden" id="username" value="<?php echo $row['client_code']?>">

                <?php endwhile;?>
            </div>
            <div class="col-md-3 pl-4">
                <p>Date: <?php echo date("Y-m-d"); ?></p>
                <input type="hidden"  value="<?php echo date("Y-m-d"); ?>">
            </div>
        </div>

        <div class="row">
            <div class="col-sm pl-4">
                Floor: <input type="text" id="floor">   Room No: <input type="text" id="room">
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
        <button type="button" class="btn btn-secondary" data-dismiss="modal" >Close</button>
        <button type="button" class="btn btn-primary submit_report">Submit</button>
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
<script src="script/swal.js"></script>
<script src="script/delete-student.js"></script>
<script src="script/view-course.js"></script>
<script>

    $(document).ready(function() {
        $('.submit_report').click(function() {
            var firstname = $('#firstname').val();
            var username = $('#username').val();
            var srf_no = $('#srf_no').val();
            var room = $('#room').val();
            var floor = $('#floor').val();
            var specifyconcern = $('#specifyconcern').val();

            console.log(firstname, "\n", username, '\n', srf_no, '\n', room, '\n', floor, '\n', specifyconcern)

            $.ajax({
                    url: 'phpfunction/function.php',
                    method: 'post',
                    type: 'post',
                    data: {
                        submit_report: 1,
                        firstname: firstname,
                        username: username,
                        srf_no: srf_no,
                        room : room,
                        floor : floor,
                        specifyconcern : specifyconcern
                    },
                    success: function(response) {
                        Swal.fire(
                            'Success',
                            'Services has been saved.',
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