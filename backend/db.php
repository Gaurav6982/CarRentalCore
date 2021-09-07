<?php
    // $con = mysqli_connect("localhost","root","","cra");
    // $con = mysqli_connect("remotemysql.com","o5aX9bf0BE","ZulxjdzDZv","o5aX9bf0BE");
    $con = mysqli_connect("sql5.freemysqlhosting.net","sql5435327","pYbt5HUuVi","sql5435327");
    if (mysqli_connect_errno()){
        echo "Failed to connect to MySQL: " . mysqli_connect_error();
    }
?>