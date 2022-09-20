<?php

$Username = "";
$Email = "";
$errors = array();

// connect to the database

$db = mysqli_connect ('hostname', 'root', 'password', 'dbname');
echo "database connected";

// if the register button is clicked

$username = $_POST['Username'];
$email = $_POST['Email'];
$password_1 = $_POST['password_1'];
$password_2 = $_POST['password_2'];
echo "data is taken";

// if there are no errors, save user to database

$sql = "INSERT INTO Users(Username, Email, password) VALUES('$username', 
 '$email', '$password_1')";
mysqli_query ($db, $sql);
echo "data inserted successfully";

//session_start();
//$session_id = session_id();
//
//
//$step = isset($_GET['step']) ? $_GET['step'] : 1;
//$next = $step + 1;
//?>
<!--<form method="post" action="?step=--><?//= $next ?><!--">-->
<!---->
<!--</form>-->
