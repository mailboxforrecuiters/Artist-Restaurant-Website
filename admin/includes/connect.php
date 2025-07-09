<?php
session_start();
$servername = "localhost";
$server_user = "artist";
$server_pass = "Artist2024!";
$dbname = "702797_artist";
if(isset($_SESSION['name'])){
   $name = $_SESSION['name']; 
}

if(isset($_SESSION['role'])){
   $role = $_SESSION['role']; 
}

$con = new mysqli($servername, $server_user, $server_pass, $dbname);
?>