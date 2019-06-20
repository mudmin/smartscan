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
// if (!securePage($_SERVER['PHP_SELF'])){die();}
?>
<style media="screen">
.huge {
		font-size: 50px;
		line-height: normal;
}
a {
    text-decoration: none !important;
}
</style>
<?php
//php goes here
?>
<div class="row">

	<!-- Add Student Card -->
		<div class="card col-12 col-sm-6 col-md-4">
			<h3 class="card-header"><strong><a href="new_student.php">Add Students</strong></h3>
				<div class="card-body">
					<h4 class="card-title text-center"><div class="huge"> <i class='fa fa-user-plus fa-1x'></i></div></h4>
					<h4 class="card-text" align="center">Students</h4>
				</div>
				<div class="card-footer">
					<span class="pull-left">You have <?=$students?> students</span>
					<span class="pull-right"><i class="fa fa-arrow-circle-right"></i></a></span>
				</div>
			</div>
	<!-- End Add Student Card -->



</div>
<?php require_once $abs_us_root . $us_url_root . 'users/includes/html_footer.php'; ?>
