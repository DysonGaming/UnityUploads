<?php
    session_start();
?>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>HTML struktur</title>
	<link href="css/style.css" rel="stylesheet" type="text/css" />
	<link rel="icon" href="img/LIMBOicon.png">
</head>

    <header>

	<div id="logo">
	<img src="img/LIMBOsmallLogo.jpg" alt="LogoSS" width="100" height="100">
	<img src="img/LIMBOfullLogo.jpg" alt="LogoSS" width="250" height="100">

    <?php
        if (isset($_SESSION["useruid"])) {
            echo "<p>Hello " . $_SESSION["useruid"] . "</p>";
            echo "<a href='includes/logout.inc.php'>Log Out</a>"; 
        }
        else {
            echo "<p>You need an account to view this content! Make one here:</p><a href='Register.php'>Register</a>";
        }
    ?>

	</header>

    <body>



    </body>
</html>