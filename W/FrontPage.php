<?php
    session_start();
?>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Limbo</title>
	<link href="style.css" rel="stylesheet" type="text/css" />
	<link rel="icon" href="img/LIMBOicon.png">
    <script type="text/javascript" src="js/jul.js"></script>
    <script type="text/javascript" src="js/game_button.js"></script>
	<script type="text/javascript" src="js/jquery.js"></script>
</head>

    <header>

        <div id="logo">
        <img src="img/LIMBOsmallLogo.jpg" alt="LogoSS" width="100" height="100">
        <img src="img/LIMBOfullLogo.jpg" alt="LogoSS" width="250" height="100">

        <canvas id="myCanvas" width="1022" height="100" style="border:1px solid #000000;">
		</canvas>

	</header>

    <br>
    <br>
    <br>
    <br>
    <br>
    <br>

    <body>
    <div id="wrapper">

        <aside>
            <p style="font-weight:bold;" class="sidebar">Other Profiles:</p>
            <a class="sidebar"  href="">Luke Skywalker</a>
            <br>
            <a class="sidebar"  href="">Tony Stark</a>
            <br>
            <a class="sidebar"  href="">Peter Parker</a>
            <br>
            <a class="sidebar"  href="">Bruce Wayne</a>
            <br>
            <a class="sidebar"  href="">Clint Barton</a>
            <br>
            <a class="sidebar"  href="">Jack Sparrow</a>
            <br>
            <br>
            <button id="ButtonGame" type="button">Open ChilliGame</button>
            <br>
            <br>
            <button id="ButtonCanon" type="button">Open CanonSim</button>
        </aside>

        <div id="contentTop">

            <?php
            if (isset($_SESSION["useruid"])) {
                echo "<p>Hello " . $_SESSION["useruid"] . "</p>";
                echo "<a href='includes/logout.inc.php'>Log Out</a>";
            }
            else {
                echo "<p>You need an account to view this content! Make one here:</p><a href='Register.php'>Register</a>";
            }
        ?>

        <div id="like_button_container"></div>

        <script src="https://unpkg.com/react@17/umd/react.development.js" crossorigin></script>
            <script src="https://unpkg.com/react-dom@17/umd/react-dom.development.js" crossorigin></script>

            <script src="js/like_button.js"></script>

        </div>

	    <div id="contentBottom">
			Indhold2

			<button id="ButtonStop" type="button">Stop All animations</button>
			<button id="ButtonStart" type="button">Start All animations</button>
			<button id="ButtonReset" type="button">Reset animations</button>
            
		</div>

		<footer>
		</footer>

    </div>
    </body>

</html>
