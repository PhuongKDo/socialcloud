<?php
	$created = false;
	if(isset($_SESSION["auth"]["id"])){
	 header("location:".ACC_SCRIPTROOT."account");
	 die();
 }
	if(!empty($_POST)){
		$errors = [];
		//check if username is already in database
		if(isset($_POST["username"])){
			if(!empty($_POST["username"]) && preg_match(('/^[a-zA-Z\-0-9_]+$/'), $_POST["username"])){
				$username = $db->quote($_POST["username"]);
				$select = $db->query("SELECT username FROM users WHERE username=$username");
				if($select->rowCount() >= 1){
					$errors["username"] = "username is already taken";
				}
			}else{
				$errors["username"] = "invalid username";
			}
		}
		//check if email is already in database
		if(isset($_POST["email"])){
			if (!empty($_POST["email"]) && filter_var($_POST["email"], FILTER_VALIDATE_EMAIL)) {
				$email = $db->quote($_POST["email"]);
				$select = $db->query("SELECT email FROM users WHERE email=$email");
				if($select->rowCount() >= 1){
					$errors["email"] = "email is already taken";
				}
			}else{
				$errors["email"] = "invalid email";
			}
		}
		//check if password is already in database and if both password and confirm password match
		if(isset($_POST["password"])){
			if(!empty($_POST['password']) && $_POST["password"] != $_POST["confirm"]){
				$errors["password"] = "password doesn't match";
			}else if(empty($_POST["password"])){
				$errors["password"] = "invalid password";
			}
		}
		//check not already in database, insert new data into database
		if(empty($errors)){
			$create = $db->prepare("INSERT INTO users SET username=?, password=?, email=?");
			$password = password_hash($_POST["password"], PASSWORD_DEFAULT);
			$create->execute([$_POST["username"], $password, $_POST['email']]);
			$created = true;
		}
	}
?>