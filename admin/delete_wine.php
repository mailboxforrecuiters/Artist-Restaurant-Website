<?php
include 'includes/connect.php';
if(isset($_POST['id'])){    
    $reslt = $con->query("DELETE FROM wine WHERE id =$_POST[id]");    
}

?> 