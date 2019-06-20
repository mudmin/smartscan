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
$persona = "";
$personb = "";
$winner = "";

$thinking = array(
	"And the winner is...",
	"I've determined that the winner is absolutely...",
	"My decision is final...",
);

if(!empty($_POST['persona'])){
	$persona = Input::get("persona");
	// dump($persona);
}
if(!empty($_POST['personb'])){
	$personb = Input::get("personb");
	// dump($personb);
}


if($persona != ""  && $personb != ""){
	$found = true;

	$aQ = $db->query("SELECT * FROM students WHERE rfid = ?",[$persona]);
	$aC = $aQ->count();
	if($aC > 0){
		$a = $aQ->first();
	}else{
		$found = false;
	}

	$bQ = $db->query("SELECT * FROM students WHERE rfid = ?",[$personb]);
	$bC = $bQ->count();
	if($bC > 0){
		$b = $bQ->first();
	}else{
		$found = false;
	}

	if($found == true){
		$winner = rand(0,1);
		if($winner == 0){
			$winner = $a->fname." ".$a->lname;
		}else{
			$winner = $b->fname." ".$b->lname;
		}
		// dump($winner);
	}else{
		Redirect::to("argue.php?err=One+or+more+badges+not+found");
	}

}



?>
		<div class="row">
			<div class="col-sm-12">
				<br>
				<h1 align="center">Argument Settler</h1>

				<form class="" action="argue.php?err=" method="post">
					<br><br>
					<?php if($persona == ""){ ?>
					<h3 align="center">Person ONE, Scan Your Badge!</h3>
					<p align="center">
					<input type="password" name="persona" value="" autofocus="on">
					<input type="submit" name="submit" value="Scan Your Badge!">
					</p>
				<?php } ?>

				<?php if($persona != "" && $personb == ""){ ?>
				<h3 align="center">Person TWO, Scan Your Badge!</h3>
				<p align="center">
				<strong>
					<font color="red">
					By scanning your badge, you hereby agree that the
					<br>
					computer is the final say in this arguement!
					<br>
				</font>
				</strong>
				<input type="hidden" name="persona" value="<?=$persona?>">
				<input type="password" name="personb" value="" autofocus="on">
				<input type="submit" name="submit" value="Scan Your Badge!">
				</p>
			<?php } ?>
				</form>

			<?php if($winner != ""){ ?>
				<h1 align="center">
					<?php
					shuffle($thinking);
					echo $thinking[0];
					?>

				</h1>
				<h1 align="center"><font color="blue"><?=$winner?></font></h1>
				<script type="text/javascript">
					setTimeout("location.href = 'argue.php';",10000);
				</script>
			<?php } ?>

			</div>
		</div>

<?php require_once $abs_us_root . $us_url_root . 'users/includes/html_footer.php'; ?>
