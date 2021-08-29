<?php
    // $con = mysqli_connect("localhost","root","","cra");
    $con = mysqli_connect("remotemysql.com","o5aX9bf0BE","ZulxjdzDZv","o5aX9bf0BE");
    if (mysqli_connect_errno()){
        echo "Failed to connect to MySQL: " . mysqli_connect_error();
    }
?>