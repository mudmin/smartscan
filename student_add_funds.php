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
require_once $abs_us_root.$us_url_root.'users/includes/template/prep.php';
if (!securePage($_SERVER['PHP_SELF'])){die();}
?>

<?php
$id = Input::get('id');
$studentQ = $db->query("SELECT * FROM students WHERE id = ?",[$id]);
$studentC = $studentQ->count();
if($studentC > 0){
$student = $studentQ->first();
}else{
$searchTerm = Input::get('search');
Redirect::to("students.php?err=Student+not+found&search=".$searchTerm);
}

if(!empty($_POST)){
	$amount = Input::get('amount');
	$amount = number_format($amount, 2, '.', '');
	$newamount = $amount + $student->balance;
	$newamount = number_format($newamount, 2, '.', '');
	logger($user->data()->id,"Add Money","Added $amount to balance. New Bal:$newamount");
	$db->update("students",$id,['balance'=>$newamount]);
}

?>
		<div class="row">
			<div class="col-sm-12">
				<h1 align="center">Add Funds to <?=$student->fname?> <?=$student->lname?></h1>
				<h3 align="center">Current Balance $<?=$student->balance?></h3>

					<form class="" action="" method="post">
						<br>
						<p align="center">
							<input type="number" name="amount" value="" autofocus="on" step=".01" min=".01">
							<input type="submit" name="submit" value="Add Funds" class="btn btn-primary">
						</p>
					</form>
			</div>
		</div>

<?php require_once $abs_us_root . $us_url_root . 'users/includes/html_footer.php'; ?>
