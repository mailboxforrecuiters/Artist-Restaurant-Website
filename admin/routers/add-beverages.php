<?php
ini_set("display_errors",1);
include '../includes/connect.php';
header('Content-Type: text/html; charset=utf-8');
$con->set_charset("utf8mb4");
$name = $_POST['name'];
$descr = $_POST['descr'];
$price = $_POST['percent'];
$categ = $_POST['category'];
$target_dir = $_SERVER['DOCUMENT_ROOT']."/artist/admin/images/";
$sql_name = NULL;
if(strlen(trim($_FILES["image_up"]["name"])) >0  ){
    $target_file = $target_dir . basename( str_replace(" ","_",$_FILES["image_up"]["name"]));
    $sql_name = 'images/'.str_replace(" ","_",$_FILES["image_up"]["name"]);
    move_uploaded_file($_FILES["image_up"]["tmp_name"], $target_file);
}
if( strlen($price) == 0){
    $price = 0.00;
}

$search = "Wine";

if( preg_match("/{$search}/i", $categ)  ){
    $wne = explode("-",$categ);
    $sql = "INSERT INTO wine (id,name,descr, percent,type) VALUES (0,'$name','$descr', $price,'$wne[1]')";
}else{
    $sql = "INSERT INTO drinks (id,name,descr, percent,type) VALUES (0,'$name','$descr', $price,'$categ')";
}
$con->set_charset("utf8mb4");
$rez = $con->query($sql);
//echo $sql;
header("location: ../drinks.php");
?>