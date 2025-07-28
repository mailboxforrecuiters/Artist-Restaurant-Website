<?php
include 'includes/connect.php';
if(isset($_POST['id'])){    
    $reslt = $con->query("DELETE FROM lau WHERE lau_id =$_POST[id]");    
}

?> 