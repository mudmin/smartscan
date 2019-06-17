<?php
include "users/init.php";

$friend = "Vince";
$friend = "John";
$friend = 42;
$friend = ["John","Vince",42];
dump($friend);


$fruit = array(
  "favorite"  => "Bananas",
  "sourest"   => "Limes",
  "funnest"   => "Kiwi",
);
dump($fruit);

$fruit["funnest"] = "Passionfruit";
dump($fruit);

$types = array(4,4.52,"This is text",true,[1,2,3]);
dump($types);
