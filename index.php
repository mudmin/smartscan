<?php
require_once 'users/init.php';
require_once $abs_us_root.$us_url_root.'users/includes/template/prep.php';
if(isset($user) && $user->isLoggedIn()){
}
?>
<style media="screen">
.huge {
		font-size: 50px;
		line-height: normal;
}
a {
    text-decoration: none !important;
}

.card {
	margin-top:1em;
}

</style>
<?php
//numbers
$students = $db->query("SELECT id FROM students")->count();
$argue = 		$db->query("SELECT id FROM logs WHERE logtype = ?",["Argue"])->count();
$balance = 	$db->query("SELECT id FROM logs WHERE logtype = ?",["Balance"])->count();
$search = 	$db->query("SELECT id FROM logs WHERE logtype = ?",["Search"])->count();
 ?>

<div id="page-wrapper">
	<div class="container">

		<?php
		if($user->isLoggedIn()){?>
			<div class="row">
<?php if(hasPerm([2,3],$user->data()->id)){?>
				<!-- Add Student Card -->
					<div class="card col-12 col-sm-6 col-md-4">
						<h3 class="card-header"><strong><a href="new_student.php">Add Students</strong></h3>
							<div class="card-body">
								<h4 class="card-title text-center"><div class="huge"> <i class='fa fa-user-plus fa-1x'></i></div></h4>
							</div>
							<div class="card-footer">
								<span class="pull-left">You have <?=$students?> students</span>
								<span class="pull-right"><i class="fa fa-arrow-circle-right"></i></a></span>
							</div>
						</div>
				<!-- End Add Student Card -->

				<!-- Search Student Card -->
					<div class="card col-12 col-sm-6 col-md-4">
						<h3 class="card-header"><strong><a href="student_search.php">Find Student</strong></h3>
							<div class="card-body">
								<h4 class="card-title text-center"><div class="huge"> <i class='fa fa-search fa-1x'></i></div></h4>
							</div>
							<div class="card-footer">
								<span class="pull-left"><?=$search?> searches performed</span>
								<span class="pull-right"><i class="fa fa-arrow-circle-right"></i></a></span>
							</div>
						</div>
				<!-- End Search Student Card -->
<?php } ?>

<!-- kiosk cards-->
<?php if(hasPerm([2,3,4,5],$user->data()->id)){?>
				<!-- Check Balance Card -->
					<div class="card col-12 col-sm-6 col-md-4">
						<h3 class="card-header"><strong><a href="kiosk_check_balance.php">Check Balance</strong></h3>
							<div class="card-body">
								<h4 class="card-title text-center"><div class="huge"> <i class='fa fa-bank fa-1x'></i></div></h4>
								</div>
							<div class="card-footer">
								<span class="pull-left"><?=$balance?> balances checked</span>
								<span class="pull-right"><i class="fa fa-arrow-circle-right"></i></a></span>
							</div>
						</div>
				<!-- End Check Balance Card -->

				<!-- Arguement Settler Card -->
					<div class="card col-12 col-sm-6 col-md-4">
						<h3 class="card-header"><strong><a href="argue.php">Settle Arguements</strong></h3>
							<div class="card-body">
								<h4 class="card-title text-center"><div class="huge"> <i class='fa fa-balance-scale fa-1x'></i></div></h4>
							</div>
							<div class="card-footer">
								<span class="pull-left"><?=$argue?> arguements have been solved!</span>
								<span class="pull-right"><i class="fa fa-arrow-circle-right"></i></a></span>
							</div>
						</div>
				<!-- End Arguement Settler Card -->
<!-- end of kiosk cards -->
<?php } ?>






				<!-- end of dashboard row -->
			</div>
			<?php
			// If not logged in
		}else{
			include "users/views/_not_logged_in.php";
		}
		languageSwitcher();?>
	</div>
</div>

<!-- Place any per-page javascript here -->



<?php require_once $abs_us_root . $us_url_root . 'users/includes/html_footer.php'; ?>
