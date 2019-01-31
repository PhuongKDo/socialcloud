<?php
//set database host, dbname, and password
try{
	$db = new PDO("mysql:host=localhost;dbname=socialcloud", "root" ,"");
	$db->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);
	$db->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);
}catch(Exception $e){
	die($e->getMessage());
}
