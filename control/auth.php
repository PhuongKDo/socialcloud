<?php
session_start();
//get id from database
if (isset($_SESSION["auth"])) {
	$id= $_SESSION["auth"]["id"];
	$user = $db->query("SELECT * FROM users WHERE id=$id")->fetch();
}
//check if usernme and password are valid
if (!isset($auth)) {
	if((!isset($_SESSION['auth']['username']) && !isset($_SESSION['auth']['password']))
		|| ($_SESSION["auth"]["password"] != $user["password"])
	){
	header("location: ".SCRIPTROOT."index.php");
		die();
	}
}
