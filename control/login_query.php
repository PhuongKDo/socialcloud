<?php
	$connected = null;
	if(isset($_SESSION["auth"]["id"])){
	 	header("location:".ACC_SCRIPTROOT."account");
	 die();
 	}
	//check if username and password in database
	if(isset($_POST["username"]) && isset($_POST["password"])){
		$username = $db->quote($_POST['username']);
		$select = $db->query("SELECT * FROM users WHERE username=$username");
		if($select->rowCount() > 0){
			$user = $select->fetch();
			if (password_verify($_POST["password"], $user["password"])){
				$_SESSION["auth"] = $user;
				header("location: ".ACC_SCRIPTROOT."account");
				die();
			}else {
				$connected = false;
			}
		}else{
			$connected = false;
		}
	}
?>