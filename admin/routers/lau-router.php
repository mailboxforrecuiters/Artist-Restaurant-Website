<?php
ini_set("display_errors",1);
include '../includes/connect.php';
header('Content-Type: text/html; charset=utf-8');
$con->set_charset("utf8mb4");
$target_dir = "images/";
	foreach ($_POST as $key => $value)
	{
	   if(preg_match("/[0-9]+_name/",$key)){
			if($value != ''){
    			$key = strtok($key, '_');
    			$value = htmlspecialchars($value);
    			$sql = "UPDATE lau SET name = '$value' WHERE lau_id = $key;";
    			$con->query($sql);
			}
		}
       
        if(preg_match("/[0-9]+_descr/",$key)){
			if($value != ''){
    			$key = strtok($key, '_');
    			$value = htmlspecialchars($value);
    			$sql = "UPDATE lau SET descr = '$value' WHERE lau_id = $key;";
    			$con->query($sql);
			}
		}
        
        if(preg_match("/[0-9]+_small/",$key)   ){
			if($value != ''){
    			$key = strtok($key, '_');
    			$value = htmlspecialchars($value);
                $sql = "UPDATE lau SET small = '$value' WHERE lau_id = $key;";
                $con->query($sql);      			 
			}
		}
        
		
		if(preg_match("/[0-9]+_large/",$key)){
			$key = strtok($key, '_');
			$sql = "UPDATE lau SET large = $value WHERE lau_id = $key;";
			$con->query($sql);
		}
		
	}
header("location: ../admin-page.php");
?>