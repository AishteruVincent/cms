<?php

require_once('../../config.php');
if(isset($_GET['id']) && $_GET['id'] > 0){
    $qry = $conn->query("SELECT * from `applicant` where id = '{$_GET['id']}' ");
    if($qry->num_rows > 0){
        foreach($qry->fetch_assoc() as $k => $v){
            $$k=$v;
        }
    }
}
?>
<style>
    #uni_modal .modal-footer{
        display:none;
    }
</style>
<div class="container-fluid">
	<dl>
        <dt class="text-muted">Program</dt>
        <dd class="pl-4"><?= isset($program) ? $program : "" ?></dd>
        <dt class="text-muted">Contact Number</dt>
        <dd class="pl-4"><?= isset($contact_number) ? $contact_number : "" ?></dd>
        <dt class="text-muted">Email</dt>
        <dd class="pl-4"><?= isset($email) ? $email : "" ?></dd>
        <dt class="text-muted">Parent Name</dt>
        <dd class="pl-4"><?= isset($parentname) ? $parentname : "" ?></dd>
        <dt class="text-muted">Address</dt>
        <dd class="pl-4"><?= isset($parent_address) ? $parent_address : "" ?></dd>
        <dt class="text-muted">Status</dt>
        <dd class="pl-4">
            <?php if($status == 1): ?>
                <span class="badge badge-green bg-gradient-green px-3 rounded-pill">Accepted</span>
            <?php else: ?>
                <span class="badge badge-red bg-gradient-red px-3 rounded-pill">Pending</span>
            <?php endif; ?>
        </dd>
    </dl>
    <div class="clear-fix my-3"></div>
    <div class="text-right">
        <button class="btn btn-sm btn-dark bg-gradient-dark btn-flat" type="button" data-dismiss="modal"><i class="fa fa-times"></i> Close</button>
    </div>
</div>