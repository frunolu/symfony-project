<?php

// Start the session
session_start();
/*
if (
    (string) ($_POST['username'] ?? '') !== ''
//    && (string) ($_POST['password'] ?? '') !== ''
) {
    $_SESSION['username'] = $_POST['username'];
//    $_SESSION['password'] = $_POST['password'];
}
*/
?>
<!DOCTYPE html>
<html>
<body>
<form method="post" name="save">
    <label for="name" class="labelname"> Username </label>
    <label for="userid"></label><input type="text" name="username" id="userid" value="<?= $_SESSION['username'] ?? ''?>" onkeyup="myFunction(this.value)" />
    <br />

</form>
<script src="js/postdatatowebserver.js"></script>
</body>
</html>




