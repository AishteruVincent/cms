
<div class="card card-outline card-primary">
	<div class="card-header">
		<h3 class="card-title">List of Applicants</h3>
		<div class="card-tools">
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
						<th>Student Number</th>
						<th>Name</th>
						<th>Attachment</th>
						<!--<th>Program</th>
						<th>Contact Number</th>
                        <th>Email</th>
                        <th>Parent Name</th>
                        <th>Parent's Address</th>
                        <th>Parent's Contact Number</th>
                        <th>Floor</th>
                        <th>Room</th> -->
                        <th>Status</th>
						<th>Action</th>
					</tr>
				</thead>
				<tbody>
					<?php 
					$i = 1;
						$qry = $conn->query("SELECT * from `applicant`");
						while($row = $qry->fetch_assoc()):
					?>
						<tr>
							<td class="text-center"><?php echo $i++; ?></td>
							<td><?php echo date("Y-m-d H:i",strtotime($row['date_added'])) ?></td>
							<td><?php echo $row['idnumber'] ?></td>
							<td><?php echo $row['studentname'] ?></td>
							<td><img src="<?php echo validate_image(isset($row['attachment']) ? $row['attachment'] :'') ?>" alt="" id="cimg" class="img-fluid img-thumbnail"></td>
							<!--<td><?php /*echo $row['program'] ?></td>
                            <td><?php echo $row['contact_number'] ?></td>
                            <td><?php echo $row['email'] ?></td>
                            <td><?php echo $row['parentname'] ?></td>
                            <td><?php echo $row['parent_address'] ?></td>
                            <td><?php echo $row['parent_contact'] ?></td>
                            <td><?php echo $row['floor'] ?></td>
                            <td><?php echo $row['room'] */?></td> -->
							<td class="text-center">
                                <?php if($row['status'] == 1): ?>
                                    <span class="badge badge-success rounded-pill">Accepted</span>
                                <?php else: ?>
                                    <span class="badge badge-danger rounded-pill">Pending</span>
                                <?php endif; ?>
                            </td>
							<td align="center">
								 <button type="button" class="btn btn-flat btn-default btn-sm dropdown-toggle dropdown-icon" data-toggle="dropdown">
				                  		Action
				                    <span class="sr-only">Toggle Dropdown</span>
				                  </button>
				                  <div class="dropdown-menu" role="menu">
									<a class="dropdown-item view_data" href="javascript:void(0)" data-id="<?php echo $row['id'] ?>"><span class="fa fa-eye text-dark"></span> View</a>
				                    <div class="dropdown-divider"></div>
				                    <a class="dropdown-item edit_data" href="javascript:void(0)" data-id="<?php echo $row['id'] ?>"><span class="fa fa-edit text-primary"></span> Edit</a>
				                    <div class="dropdown-divider"></div>
				                    <a class="dropdown-item delete_data" href="javascript:void(0)" data-id="<?php echo $row['id'] ?>"><span class="fa fa-trash text-danger"></span> Delete</a>
				                  </div>
							</td>
						</tr>
					<?php endwhile; ?>
				</tbody>
			</table>
		</div>
		</div>
	</div>
</div>
<script>
	$(document).ready(function(){
		$('.delete_data').click(function(){
			_conf("Are you sure to delete this applicant permanently?","delete_service",[$(this).attr('data-id')])
		})
		$('#create_new').click(function(){
			uni_modal("<i class='fa fa-plus'></i> Add New Service","maintenance/manage_service.php","mid-large")
		})
		$('.edit_data').click(function(){
			uni_modal("<i class='fa fa-edit'></i> Edit Applicant Details","applicants/status.php?id="+$(this).attr('data-id'),"mid-large")
		})
		$('.view_data').click(function(){
			uni_modal("<i class='fa fa-list'></i> Service Details","applicants/view_applicants.php?id="+$(this).attr('data-id'),"")
		})
		$('.table td,.table th').addClass('py-1 px-2 align-middle')
		$('.table').dataTable();
	})
	function delete_service($id){
		start_loader();
		$.ajax({
			url:_base_url_+"classes/Master.php?f=delete_applicants",
			method:"POST",
			data:{id: $id},
			dataType:"json",
			error:err=>{
				console.log(err)
				alert_toast("An error occured.",'error');
				end_loader();
			},
			success:function(resp){
				if(typeof resp== 'object' && resp.status == 'success'){
					location.reload();
				}else{
					alert_toast("An error occured.",'error');
					end_loader();
				}
			}
		})
	}
</script>