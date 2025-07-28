<?php
include '../includes/connect.php';
header('Content-Type: text/html; charset=utf-8');
$con->set_charset("utf8mb4");
$target_dir = "images/";
	foreach ($_POST as $key => $value)
	{
        if(preg_match("/[0-9]+_descr/",$key)){
    			if($value != ''){
    			$key = strtok($key, '_');
    			$value = htmlspecialchars($value);
    			$sql = "UPDATE wine SET descr = '$value' WHERE id = $key;";
    			$con->query($sql);
			}
		}
        
        if(preg_match("/[0-9]+_category/",$key)   ){
			if($value != ''){
    			$key = strtok($key, '_');
    			$value = htmlspecialchars($value);
                $sql = "UPDATE wine SET category = '$value' WHERE id = $key;";           
			 
			}
		}
        
		if(preg_match("/[0-9]+_name/",$key)){
			if($value != ''){
    			$key = strtok($key, '_');
    			$value = htmlspecialchars($value);
    			$sql = "UPDATE wine SET name = '$value' WHERE id = $key;";
    			$con->query($sql);
			}
		}
		if(preg_match("/[0-9]+_percent/",$key)){
			$key = strtok($key, '_');
			$sql = "UPDATE wine SET percent = $value WHERE id = $key;";
			$con->query($sql);
		}
		
	}
header("location: ../drinks.php");
?>