<?php
include "users/init.php";

$user = new stdClass();
dump($user);
$user->id = 5;
$user->name = "Dan";
$user->permission = "Admin";

dump($user);

echo $user->name;
