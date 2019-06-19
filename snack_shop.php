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
	dump($_POST);
}
?>
		<div class="row">
			<div class="col-sm-3"></div>
			<div class="col-sm-6">
				<form class="" action="" method="post">
						<br>
						<label for=""><strong>Sale Amount</strong></label>
						<input class="form-control" type="number" name="amount" value="" min=".01" step=".01" required>

						<label for=""><strong>Scan Your RFID Tag To Confirm</strong></label>
						<input class="form-control" type="password" name="rfid" value="" required>
						<p align="center">
							<br>
							<input class="btn btn-success" type="submit" name="submit" value="Confirm Purchase">
						</p>

				</form>
				</div>
			</div>
		</div>

<?php require_once $abs_us_root . $us_url_root . 'users/includes/html_footer.php'; ?>
