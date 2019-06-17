<?php
include "users/init.php";

$fruit = array(
  "favorite"  => "Banana",
  "sourest"   => "Lime",
  "funnest"   => "Kiwi",
);
dump($fruit);

// echo $fruit["funnest"];

foreach ($fruit as $key => $value) {
  echo "The key is $key and the value is $value<br>";

}
