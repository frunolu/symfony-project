
<?php
//include('db.php');
//session_start();
//$check=$_SESSION['login_username'];
////$session=mysqli_query("SELECT username FROM `login` WHERE username='$check' ");
//$row=mysqli_fetch_array($session);
//$login_session=$row['username'];
//if(!isset($login_session)){header("Location:index.php");
//}

$_SESSION['username']="aaaa";
echo $_SESSION['username'];

if(!isset($_SESSION['username'])){
    echo "    Nie si prihlaseny!";
}else {
    echo "    Si prihlaseny!";
}
?>
