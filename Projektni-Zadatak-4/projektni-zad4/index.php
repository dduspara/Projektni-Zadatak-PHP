<?php
session_start();
$MySQL = mysqli_connect("localhost","root","","bazapodataka") or die('Greška.');
if(isset($_GET['menu'])) { $menu = (int)$_GET['menu']; }
if(isset($_GET['action'])) { $action = (int)$_GET['action']; }

if(!isset($_POST['_action_'])) { $_POST['_action_'] = FALSE; }
if (!isset($menu)) { $menu = 1; }
include_once("functions.php");
print '
<!DOCTYPE HTML>
<html lang="hr">
	<head>
		<title>Grad Zagreb</title>
		<link rel="stylesheet" href="style.css">
		<meta http-equiv="content-type" content="text/html; charset=UTF-8">
		<meta name="description" content="">
		<meta name="keywords" content="">
		<meta name="author" content="Dominik Duspara">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="shortcut icon" type="image/x-icon" href="images/icon.png">
	</head>
<body>
	<header>
		<div'; if ($menu > 0) { print ' class="hp"'; }  print '></div>
		<nav>';
		include("menu.php");
		print '
		</nav>
	</header>
	<main>';
	if (isset($_SESSION['message'])) {
		print $_SESSION['message'];
		unset($_SESSION['message']);
	}
		if (!isset($menu) || $menu == 1) { include("home.php"); }
	
		else if ($menu == 2) { include("news.php"); }		

		else if ($menu == 3) { include("contact.php"); }		
		
		else if ($menu == 4) { include("about.php"); }

		else if ($menu == 5) { include("gallery.php"); }

		else if ($menu == 6) { include("registration.php"); }

		else if ($menu == 7) { include("login.php"); }

		else if ($menu == 8) { include("admin.php"); }
		print '
	</main>
	<footer>
		<p>Copyright &copy; 2023 Dominik Duspara. <a href="https://github.com/dduspara"><img src="images/gitHub.png" title="Github" alt="Github"></a></p>
	</footer>
</body>
</html>';
?>