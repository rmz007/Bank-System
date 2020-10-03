<?php

$hostname = "localhost";

$user = "root";

$password = "";

$database = "bank";

$con = mysqli_connect($hostname,$user,$password) or die("Connection Failed........!!!");

mysqli_select_db($con,$database) or die("Database not selected....!!!");

?>