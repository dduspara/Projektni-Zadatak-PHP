<?php
$MySQL = mysqli_connect("localhost","root","","bazapodataka") or die('Error connecting to MySQL server.');
if(isset($_GET['menu'])) { $menu = (int)$_GET['menu']; }
if(isset($_GET['action'])) { $action = (int)$_GET['action']; }

if(!isset($_POST['_action_'])) { $_POST['_action_'] = FALSE; }
if (!isset($menu)) { $menu = 1; }
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
		<div'; if ($menu > 0) { print ' class="hero-image"'; }  print '></div>
		<nav>';
		include("menu.php");
		print '
		</nav>
	</header>
	<main>';
		if (!isset($menu) || $menu == 1) { include("home.php"); }
	
		else if ($menu == 2) { include("news.php"); }		

		else if ($menu == 3) { include("contact.php"); }		
		
		else if ($menu == 4) { include("about.php"); }

		else if ($menu == 5) { include("gallery.php"); }
		print '
	</main>
	<footer>
		<p>Copyright &copy; 2022 Dominik Duspara. <a href="https://github.com/dduspa2"><img src="images/gitHub.png" title="Github" alt="Github"></a></p>
	</footer>
</body>
</html>';
?>