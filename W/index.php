<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Limbo</title>
		<link href="css/style.css" rel="stylesheet" type="text/css" />
		<link rel="icon" href="img/LIMBOicon.png">

		<script> src="js/nav.js" </script>
	</head>
	<body>
		<div id="wrapper">

			<header>

			<div id="logo">
			<img src="img/LIMBOsmallLogo.jpg" alt="LogoSS" width="100" height="100">
			<img src="img/LIMBOfullLogo.jpg" alt="LogoSS" width="250" height="100">

			<!--
			</div>
				Web Header
				<p class="names">Jens Hansen</p>
			-->

			</header>



			<!--

			<aside>

				Web Sidebar
				<p class="names">Hans Jensen</p>

			</aside>

			-->

			<div id="content">

				<h3> Access Account </h3>

				<section class="login/register-form">
					<form action="includes/login.inc.php" method="post">

						<table>
							<tr>
								<td>
									<input type="text" name="uid"
									placeholder="Username">
								</td>
							</tr>

							<tr>
								<td>
									<input type="password" name="pwd"
									placeholder="Password">
								</td>
							</tr>

							<tr>
								<td>
									<input type="submit" name="Login"
									value="Login">
								</td>
							</tr>
						</table>

						<hr style="width:15%;text-align:left;margin-left:0">

					</form>





					<form action="Register.php?error=none" method="post">

						<table>

							<tr>
								<td>
									<input type="submit" value="Register">
								</td>
							</tr>

						</table>
					</form>
				</section>
	</body>
</html>
