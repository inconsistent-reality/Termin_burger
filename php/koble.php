<?php
    // database details
    $host = "172.28.119.10:3306";//172.28.119.10: er ip adressen til vm maskin(hvilken dør 3306 er standar )
    $username = "php";
    $password = "password";
    $dbname = "aarsoppgave";

    // creating a connection
    $con = mysqli_connect($host, $username, $password, $dbname);

    // to ensure that the connection is made(! bettyr ikke/not)
    if (!$con)
    {
        die("Connection failed!" . mysqli_connect_error());
    }
  