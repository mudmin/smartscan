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
$checked_in = $db->query("SELECT id FROM students WHERE checked_in = 1")->count();
$checked_out = $db->query("SELECT id FROM students WHERE checked_in = 0")->count();

$transactions = $db->query("SELECT amount FROM transactions WHERE transaction_type = 1")->results();
$total = 0;
foreach($transactions as $t){
	$total = $total + $t->amount;
}
$total = $total * -1;

$cash = $db->query("SELECT balance FROM students")->results();
$cb = 0;
foreach($cash as $c){
	$cb = $cb + $c->balance;
}


 ?>

<div id="page-wrapper">
	<div class="container">

		<?php
		if($user->isLoggedIn()){?>
			<div class="row">
<!-- Admins, Managers -->
<?php if(hasPerm([2,3],$user->data()->id)){?>
				<!-- Add Student Card -->
					<div class="card col-12 col-sm-6 col-md-4">
						<h3 class="card-header"><strong><a href="students.php">Manage Students</strong></h3>
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

				<!-- Check Balance Card -->
					<div class="card col-12 col-sm-6 col-md-4">
						<h3 class="card-header"><strong><a href="#">Cash On Hand</strong></h3>
							<div class="card-body">
								<h4 class="card-title text-center"><div class="huge"> <i class='fa fa-bank fa-1x'></i></div></h4>
								</div>
							<div class="card-footer">
								<span class="pull-left"><?php echo money($cb);?> on hand</span>
								<span class="pull-right"><i class="fa fa-arrow-circle-right"></i></a></span>
							</div>
						</div>
				<!-- End Check Balance Card -->
<?php } ?>

<!-- Admins, Managers, Cashiers -->
<?php if(hasPerm([2,3,5],$user->data()->id)){?>
				<!-- Add Student Card -->
					<div class="card col-12 col-sm-6 col-md-4">
						<h3 class="card-header"><strong><a href="snack_shop.php">Snack Shop</strong></h3>
							<div class="card-body">
								<h4 class="card-title text-center"><div class="huge"> <i class='fa fa-cutlery fa-1x'></i></div></h4>
							</div>
							<div class="card-footer">
								<span class="pull-left"><?php echo money($total);?> total sales</span>
								<span class="pull-right"><i class="fa fa-arrow-circle-right"></i></a></span>
							</div>
						</div>
				<!-- End Add Student Card -->

<?php } ?>

<!-- kiosk cards-->
<?php if(hasPerm([2,3,4,5],$user->data()->id)){?>
				<!-- Check Balance Card -->
					<div class="card col-12 col-sm-6 col-md-4">
						<h3 class="card-header"><strong><a href="kiosk_check_balance.php">Check Balance</strong></h3>
							<div class="card-body">
								<h4 class="card-title text-center"><div class="huge"> <i class='fa fa-dollar fa-1x'></i></div></h4>
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
								<span class="pull-left"><?=$argue?> arguements solved!</span>
								<span class="pull-right"><i class="fa fa-arrow-circle-right"></i></a></span>
							</div>
						</div>
				<!-- End Arguement Settler Card -->

				<!-- Arguement Settler Card -->
					<div class="card col-12 col-sm-6 col-md-4">
						<h3 class="card-header"><strong><a href="check_in.php">Check In</strong></h3>
							<div class="card-body">
								<h4 class="card-title text-center"><div class="huge"> <i class='fa fa-sign-in fa-1x'></i></div></h4>
							</div>
							<div class="card-footer">
								<span class="pull-left"><?=$checked_in?> student<?php if($checked_in != 1){echo "s";} ?> checked in</span>
								<span class="pull-right"><i class="fa fa-arrow-circle-right"></i></a></span>
							</div>
						</div>
				<!-- End Arguement Settler Card -->

				<!-- Arguement Settler Card -->
					<div class="card col-12 col-sm-6 col-md-4">
						<h3 class="card-header"><strong><a href="check_out.php">Check Out</strong></h3>
							<div class="card-body">
								<h4 class="card-title text-center"><div class="huge"> <i class='fa fa-sign-out fa-1x'></i></div></h4>
							</div>
							<div class="card-footer">
								<span class="pull-left"><?=$checked_out?> student<?php if($checked_out != 1){echo "s";} ?> checked out</span>
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
