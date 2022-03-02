<?php
    session_start();
?>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Limbo</title>
    <link href="stylegame.css" rel="stylesheet" type="text/css" />
    <link rel="icon" href="img/LIMBOicon.png">

    <script type="text/javascript" src="js/chilligame.js"></script>
    <script type="text/javascript" src="js/jquery.js"></script>
</head>

    <header>

        <div id="logo">
        <img src="img/LIMBOsmallLogo.jpg" alt="LogoSS" width="100" height="100">
        <img src="img/LIMBOfullLogo.jpg" alt="LogoSS" width="250" height="100">

	</header>

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
                    <button id="ButtonGame" type="button">Main Menu</button>
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

                <br>
                <br>

                <canvas id="myCanvas" width="100" height="100" style="border:1px solid #000000;">
                </canvas>

                <br>

                <button id="ButtonStart" type="button">Start Spil</button>

                <br>
                <br>

                <button id="Button1" type="button">Tag 1</button>
                <button id="Button2" type="button">Tag 2</button>
                <button id="Button3" type="button">Tag 3</button>
                

            </div>

            <footer>
            </footer>

        </div>
    </body>

</html>
