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
if(!empty($_POST)){
$rfid = Input::get('rfid');
$check = $db->query("SELECT * FROM students WHERE rfid = ?",[$rfid])->count();
		if($check < 1){
		processForm();
		$studentid = $db->lastId();
		$fname = Input::get('fname');
		$lname = Input::get('lname');
		$balance = Input::get('balance');
		logger($user->data()->id, "Money", "Added new user $fname $lname with a balance of $balance.");

		$fields = array(
			"student"						=>$studentid,
			"done_by"						=>$user->data()->id,
			"amount"						=>$balance,
			"date_created"			=>date("Y-m-d H:i:s"),
			"transaction_type"	=>3,
		);
		$db->insert("transactions",	$fields);

		Redirect::to('students.php');
	}else{
		err("STUDENT NOT ADDED - This RFID code is already in use");
	}
}

if(!empty($_GET['search'])){
	$searchTerm = Input::get('search');
	$query = $db->query("SELECT * FROM students WHERE fname = ? OR lname = ? OR rfid = ?",[$searchTerm,$searchTerm,$searchTerm]);
	$count = $query->count();
	$results = $query->results();
	logger($user->data()->id, "Search", "Searched for $searchTerm");
}
?>
		<div class="row">
			<!-- left col -->
			<div class="col-12 col-md-6">
				<h2>Create New Student</h2>
				<?php
				displayForm('students');
				 ?>
			</div>

			<!-- right col -->
			<div class="col-12 col-md-6">
				<h2>Find a Student</h2>
				<form class="" action="" method="get">
					<label for="">Enter Search Term</label>
					<div class="input-group">
					<input class="form-control" type="text" name="search" value="" required autofocus="on" placeholder="Search Here!">
					<input class="btn btn-success" type="submit" name="submit" value="Go!">
					</div>
				</form>
			</div>
		</div>

		<?php
		if(!empty($_GET['search'])){
			?>
			<div class="row">
				<div class="col-sm-12">
					<br>
					<h2>We found <?=$count?> student<?php if($count != 1){ echo "s";}	?>
					</h2>

					<table class="table table-striped">
						<thead>
							<tr>
								<th>ID</th>
								<th>First Name</th>
								<th>Last Name</th>
								<th>RFID</th>
								<th class="text-right">Balance</th>
								<th>Status</th>
								<th></th>
								<th></th>

							</tr>
						</thead>
						<tbody>
							<?php foreach ($results as $r) { ?>
								<tr>
									<td><?=$r->id?></td>
									<td><?=$r->fname?></td>
									<td><?=$r->lname?></td>
									<td><?=$r->rfid?></td>
									<td class="text-right"><?=money($r->balance);?></td>
									<td><?=cico($r->checked_in);?></td>
									<td>
										<a href="student.php?id=<?=$r->id?>&search=<?=$searchTerm?>">View</a>
									</td>

									<td>
										<a href="student_add_funds.php?id=<?=$r->id?>&search=<?=$searchTerm?>">Add Funds</a>
									</td>
								</tr>
							<?php } ?>
						</tbody>
					</table>

				</div>
			</div>
		<?php } ?>
<?php require_once $abs_us_root . $us_url_root . 'users/includes/html_footer.php'; ?>
