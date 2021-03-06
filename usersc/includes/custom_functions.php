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

//Put your custom functions in this file and they will be automatically included.

//bold("<br><br>custom helpers included");

function cico($number){
  if($number == 0){
    echo "Checked Out";
  }elseif($number == 1){
    echo "<font color='green'><strong>Checked In</strong></font>";
  }else{
    echo "<font color='blue'>unknown</font>";
  }
}

function echoStudent($id){
  $db = DB::getInstance();
  $q = $db->query("SELECT fname,lname FROM students WHERE id = ?",[$id]);
  $c = $q->count();
  if($c > 0){
    $student = $q->first();
    echo $student->fname." ".$student->lname;
  }else{
    echo "Unknown Student";
  }
}

function echoReason($id){
  $db = DB::getInstance();
  $q = $db->query("SELECT * FROM transaction_types WHERE id = ?",[$id]);
  $c = $q->count();
  if($c > 0){
    $d = $q->first();
    echo $d->description;
  }else{
    echo "unknown";
  }
}

function moneyrfid($ugly){
	$ugly = number_format($ugly,2,'.',',');
  if($ugly > 0){
    echo "<font color='green'>$ugly</font>";
  }elseif($ugly < 0){
    echo "<font color='red'>$ugly</font>";
  }else{
    echo "<font color='blue'>$ugly</font>";
  }
}
