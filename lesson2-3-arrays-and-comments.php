<?php
include "users/init.php";
$team = "Eagles";
$teams = ["Eagles","Giants","Cowboys","Redskins"];
dump($teams);
echo $teams[2];
$data = [1.52, "Eagles", true];
dump($data);

$cars = [];
dump($cars);

$cars["have"] = "Chevy Astro";
$cars["want"] = "Ferrari";

dump($cars);

// This is the beginning of lesson 3

$fruit = array(
  "Apples",
  "Oranges",
  "Kiwi",
);
dump($fruit);

/*
this
is
array
multiline comment
*/

$fruit = array(
  "favorite"  => "Bananas",
  "sourest"   => "Limes",
  "funnest"   => "Kiwi",
);
dump($fruit);

echo $fruit["favorite"];
?>
