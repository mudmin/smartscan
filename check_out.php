<?php
/*
UserSpice 4
An Open Source PHP User Management System
by the UserSpice Team at http://UserSpice.com

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/
require_once 'users/init.php';
require_once 'users/views/_kiosk_mode.php';
if (!securePage($_SERVER['PHP_SELF'])){die();} ?>

<?php

if(!empty($_POST['rfid'])){
	$rfid = Input::get('rfid');
	$query = $db->query("SELECT id,fname,lname FROM students WHERE rfid = ?",[$rfid]);
	$count = $query->count();

	if($count > 0){
		$student = $query->first();
		$db->update("students",$student->id,['checked_in'=>0]);
		logger(1, "CICO", "$student->fname $student->lname checked out");
		Redirect::to("check_out.php?err=".$student->fname." checked out");

	}else{
		Redirect::to("check_out.php?err=Not+found");
	}
}
?>

<div class="row">
	<div class="col-sm-3">

	</div>
	<div class="col-sm-6">
		<!-- <img src="users/images/logo.png" alt=""> -->
		<br>
		<h1 class="text-center">Check Out Here!</h1>
		<form class="" action="" method="post">
			<p align="center">
			<input class="form-control" type="password" name="rfid" value="" required autofocus="on" placeholder="Scan Your Tag!">
			<br>
			<input class="btn btn-danger" type="submit" name="submit" value="Go!">
			</p>
		</form>
	</div>
</div>
<?php
$message = Input::get("err");
if($message != ""){ ?>
	<script type="text/javascript">
		// setTimeout("location.href = 'kiosk_check_balance.php';",5000);
	</script>
<?php }  ?>

<?php //require_once $abs_us_root . $us_url_root . 'users/includes/html_footer.php'; ?>
