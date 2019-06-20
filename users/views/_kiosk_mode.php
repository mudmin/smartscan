<?php
//Kiosk Code
$db = DB::getInstance();
$settings = $db->query("SELECT * FROM settings")->first();
require_once $abs_us_root . $us_url_root . 'usersc/templates/' . $settings->template . '/header.php'; //custom template header
require_once $abs_us_root . $us_url_root . 'usersc/templates/' . $settings->template . '/container_open.php'; //custom template container
$err = Input::get('err');
if($err != ''){
err($err);
}
//end kiosk code
?>

<style media="screen">
	body {background-color:black;}
  .container{
    position: absolute; top: 50%; left: 50%; transform: translate(-50%, -50%);
  }
</style>
