<?php

if (isset($_POST["submit"])) {

    $email = $_POST["email"];
    $username = $_POST["uid"];
    $pwd = $_POST["pwd"];

    require_once 'dbh.inc.php';
    require_once 'functions.inc.php';

    // Checking for user mistakes in register (i.e Errorhandling)
    if (emptyInputCheck($email, $username, $pwd) !== false) {
        header("location: ../register.php?error=emptyInput");
        exit();
    }

    if (invalidUID($username) !== false) {
        header("location: ../register.php?error=invalidUID");
        exit();
    }

    if (invalidEmail($email) !== false) {
        header("location: ../register.php?error=invalidEmail");
        exit();
    }

    if (uidExists($conn, $username, $email) !== false) {
        header("location: ../register.php?error=usernameTaken");
        exit();
    }

    createUser($conn, $email, $username, $pwd);
}
else {
    header("location: ../register.php");
    exit();
}