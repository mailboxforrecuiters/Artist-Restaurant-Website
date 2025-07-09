<?php
/*ini_set('display_errors', '1');
ini_set('display_startup_errors', '1');
error_reporting(E_ALL);*/
include '../includes/connect.php';

$target_dir = "../../assets/"; //  Target directory is one level up from the current script location
$temp = explode(".", $_FILES["pdfInput"]["name"]);
$newfilename = 'Artist-menu.' . end($temp);

$target_file = $target_dir . $newfilename;

    // Check if the uploaded file is valid
    if (is_uploaded_file($_FILES["pdfInput"]["tmp_name"])) {

        // Move the uploaded file to the target directory and rename it
        if (move_uploaded_file($_FILES["pdfInput"]["tmp_name"], $target_file)) {
            //echo "The file $newfilename has been uploaded and renamed to the parent directory.";
        } else {
            //echo "Sorry, there was an error uploading and renaming your file.";
        }
    } else {
        //echo "Invalid file upload.";
    }
    move_uploaded_file($_FILES['pdfInput']['tmp_name'], $target_file);

    header("location: ../pdf.php");

?>