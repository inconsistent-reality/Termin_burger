<?php
    // database details
    $host = "172.28.119.10:3306";
    $username = "php";
    $password = "password";
    $dbname = "aarsoppgave";

    // creating a connection
    $con = mysqli_connect($host, $username, $password, $dbname);

    // to ensure that the connection is made
    if (!$con)
    {
        die("Connection failed!" . mysqli_connect_error());
    }
  