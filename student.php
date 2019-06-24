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

$transactions = $db->query("SELECT * FROM transactions WHERE student = ? ORDER BY id DESC",[$id])->results();
?>
		<div class="row">
			<div class="col-sm-12">
				<?php
				// dump($student);
				$usFormUpdate = $id; //The row you want to update
				$options['update'] = $usFormUpdate;


			if(!empty($_POST)){
				$rfid = Input::get('rfid');
				$check = $db->query("SELECT * FROM students WHERE rfid = ? AND id != ?",[$rfid,$id])->count();
						if($check < 1){
						processForm($options);
						logger($user->data()->id, "Info", "Modified info of student $id");
						Redirect::to('students.php?err=Updated!');
					}else{
						err("STUDENT NOT ADDED - This RFID code is already in use");
						$_POST = [];
					}
				}

				//then call your form with

				displayform('students',['update'=>$id,'skip'=>['balance']]);
				?>

				<table class="table table-striped paginate">
					<thead>
						<tr>
							<th>Done By</th>
							<th>Amount</th>
							<th>Date</th>
							<th>Type</th>
						</tr>
					</thead>
					<tbody>
						<?php foreach($transactions as $t){?>
							<tr>
								<td><?php echouser($t->done_by);?></td>
								<td><?php moneyrfid($t->amount);?></td>
								<td><?=$t->date_created?></td>
								<td><?php echoReason($t->transaction_type);?></td>
							</tr>
						<?php }?>
					</tbody>
				</table>
			</div>
		</div>

<?php require_once $abs_us_root . $us_url_root . 'users/includes/html_footer.php'; ?>
