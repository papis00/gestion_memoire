<?php 
$conn = mysqli_connect("mysql-yuri.alwaysdata.net","yuri","passe123","yuri_gestion");

if(!$conn){
	die("Connection error: " . mysqli_connect_error());	
}
?>
