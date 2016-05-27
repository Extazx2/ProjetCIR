<!DOCTYPE html>
<html>
	<?php 
		require 'model/Bdd.php';
		require "model/Etage.php";
		$db = new Bdd('visitisen');
		session_start();
	?>
	<head>
		<title>VisitISEN</title>
		<meta charset="utf-8"/>
		<link rel="stylesheet" type="text/css" href="style.css">
		<link rel="shortcut icon" type="image/x-icon" href="img/isen.ico"/>
		<script src="https://use.fontawesome.com/234a7fefe5.js"></script>
		<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script>
	</head>

	<body>
		<?php
			if (isset($_GET['etage'])){
				$etage = new Etage($_GET['etage'], $db);
				require("view/etage.php");
			}
			else
				require("view/welcome.php");
		?>
	</body>
</html>
