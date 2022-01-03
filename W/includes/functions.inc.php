<?php

// Check if the user did NOT type anything in any of the boxes
function emptyInputCheck($email, $username, $pwd) {
    $result;
    if (empty($email) || empty($username) || empty($pwd)) {

        $result = true;
    } 
    else {

        $result = false;
    }

    return $result;
}
// check if uid is following the preset rules from the search algorithm below
function invalidUID($username) {
    $result;
    if (!preg_match("/^[a-zA-Z0-9\s]*$/", $username)) {

        $result = true;
    }
    else {

        $result = false;
    }

    return $result;
}
// Checks if email is valid
function invalidEmail($email) {
    $result;
    if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {

        $result = true;
    }
    else {

        $result = false;
    }

    return $result;
}
// Check if users input for username OR email already exists on the DB + some antiscumbag checks
function uidExists($conn, $username, $email) {
    $sql = "SELECT * FROM users WHERE usersUid = ? OR usersEmail = ?;";
    $stmt = mysqli_stmt_init($conn);
    if (!mysqli_stmt_prepare($stmt, $sql)) {
        header("location: ../register.php?error=stmtfailure");
        exit();
    }

    mysqli_stmt_bind_param($stmt, "ss", $username, $email);
    mysqli_stmt_execute($stmt);

    $resultData = mysqli_stmt_get_result($stmt);

    if ($row = mysqli_fetch_assoc($resultData)) {
        return $row;
    }
    else {
        $result = false;
        return $result;
    }

    mysqli_stmt_close($stmt);
}
// make new account
function createUser($conn, $email, $username, $pwd) {
    $sql = "INSERT INTO users (usersEmail, usersUid, usersPwd) VALUES (?,?,?);";
    $stmt = mysqli_stmt_init($conn);

    if (!mysqli_stmt_prepare($stmt, $sql)) {
        header("location: ../register.php?error=stmtfailure");
        exit();
    }

    $hashedPwd = password_hash($pwd, PASSWORD_DEFAULT);

    mysqli_stmt_bind_param($stmt, "sss", $email, $username, $hashedPwd);
    mysqli_stmt_execute($stmt);
    mysqli_stmt_close($stmt);

    header("location: ../index.php?error=none");
    exit();

}

// Check if the user did NOT type anything in any of the boxes (LOGIN VERSION)
function emptyInputLogin($username, $pwd) {
    $result;
    if (empty($username) || empty($pwd)) {

        $result = true;
    } 
    else {

        $result = false;
    }

    return $result;
}

// Login to account
function loginUser($conn, $username, $pwd) {
    $uidExists = uidExists($conn, $username, $email);

    if ($uidExists === false) {
        header("location: ../index.php?error=WrongPwdOrUid");
        exit();
    }

    $pwdHashed = $uidExists["usersPwd"];
    $checkPwd = password_verify($pwd, $pwdHashed);
    if ($checkPwd === false) {
        header("location: ../index.php?error=WrongPwdOrUid");
        exit();
    }
    else if ($checkPwd === true) {
        session_start();
        $_SESSION["userid"] = $uidExists["usersid"];
        $_SESSION["useruid"] = $uidExists["usersUid"];
        header("location: ../FrontPage.php");
        exit();
    }
}