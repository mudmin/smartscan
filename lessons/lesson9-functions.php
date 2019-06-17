<?php
include "users/init.php";
$id = 13;

if($id < 5 && $id > 10){
  echo "True";
}

function echoThis($text){
echo "I have been told to echo $text <br>";
}

$message = "Hi Mom";
echoThis("Hello!");
echoThis("Goodbye!");
echoThis("Au Revoir!");
echoThis("Hasta la Vista!");
echoThis($message);
echoThis(4+5);
