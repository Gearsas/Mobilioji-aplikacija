<?php
require "DataBase.php";
$db = new DataBase();
if (isset($_GET['name']) && isset($_GET['email']) && isset($_GET['username']) && isset($_GET['password'])) {
    if ($db->dbConnect()) {
        if ($db->signUp("Users", $_GET['name'], $_GET['email'], $_GET['username'], $_GET['password'])) {
           echo json_encode(array( "response" => "Sucess",));
        } else echo json_encode(array( "response" => "Failed",));
    } else echo "Error: Database connection";
} else echo "All fields are required";
?>

