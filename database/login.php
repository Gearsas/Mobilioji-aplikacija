<?php
require "DataBase.php";
$db = new DataBase();
if (isset($_GET['username']) && isset($_GET['password'])) {
    if ($db->dbConnect()) {
        if ($db->logIn("Users", $_GET['username'], $_GET['password'])) {
            echo json_encode(array( "response" => $_GET['username'],));
        } else echo json_encode(array( "response" => "Failed",));
    } else echo "Error: Database connection";
} else echo "All fields are required";
?>
