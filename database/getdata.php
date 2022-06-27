<?php
require "DataBase.php";
$db = new DataBase();
if (isset($_GET['request'])) {
    if ($db->dbConnect()) {
        $answ = $db->GetPav("eksponatai", $_GET['request']);
        $answ1 = $db->GetData("eksponatai", $_GET['request']);
        $answ2 = $db->GetExtra("eksponatai", $_GET['request']);
        $answ3 = $db->GetMuseum("eksponatai", $_GET['request']);
        echo json_encode(array( "pav" => $answ, "data" => $answ1, "extra" => $answ2, "museum" => $answ3));
        
    } else echo "Error: Database connection";
} else echo "All fields are required";
?>