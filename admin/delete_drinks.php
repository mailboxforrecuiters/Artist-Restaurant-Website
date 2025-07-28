<?php
include 'includes/connect.php';
if(isset($_POST['id'])){    
    $reslt = $con->query("DELETE FROM drinks WHERE id =$_POST[id]");    
}

?> 