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
if(!empty($_GET['search'])){
	$searchTerm = Input::get('search');
	$query = $db->query("SELECT * FROM students WHERE fname = ? OR lname = ? OR rfid = ?",[$searchTerm,$searchTerm,$searchTerm]);
	$count = $query->count();
	$results = $query->results();
}
?>
		<div class="row">
			<div class="col-sm-3">

			</div>
			<div class="col-sm-6">
				<br>
				<form class="" action="" method="get">
					<input type="text" name="search" value="" required autofocus="on" placeholder="Search Here!">
					<input type="submit" name="submit" value="Go!">
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
						</tr>
					</thead>
					<tbody>
						<?php foreach ($results as $r) { ?>
							<tr>
								<td><?=$r->id?></td>
								<td><?=$r->fname?></td>
								<td><?=$r->lname?></td>
								<td><?=$r->rfid?></td>
							</tr>
						<?php } ?>






					</tbody>
				</table>




				<?php dump($results);?>
			</div>
		</div>
	<?php } ?>
<?php require_once $abs_us_root . $us_url_root . 'users/includes/html_footer.php'; ?>
