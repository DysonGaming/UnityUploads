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

	</header>

    <body>

        <h3>Register Account</h3>

        <section class="register-form">
            <form action="includes/register.inc.php" method="post">
                <table>
                    <tr>
                        <td>
                            <input type="text" name="uid"
                            placeholder="Username">
                        </td>

                    </tr>

                    <tr>
                        <td>
                            <input type="Password" name="pwd"
                            placeholder="Password">
                        </td>

                    </tr>

                    <tr></tr>
                    <tr></tr>
                    <tr></tr>

                    <tr>

                        <td>
                            <input type="email" name="email"
                            placeholder="E-mail Adress">
                        </td>

                    </tr>

                    <tr></tr>
                    <tr></tr>
                    <tr></tr>
                    <tr></tr>
                    <tr></tr>

                    <tr>
                        <td>
                            <input type="submit" name="submit"
                            value="Create account">	
                        </td>
                    </tr>

                </table>
            </form>
        </section>
    </body>
</html>