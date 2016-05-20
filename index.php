<!DOCTYPE html>
<html>
	<?php 
		require_once("connect.php");
		session_start();
	?>
	<head>
		<title>VisitISEN</title>
		<link rel="stylesheet" type="text/css" href="style.css">
		<link rel="shortcut icon" type="image/x-icon" href="img/isen.ico" />
		<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script>
	</head>

	<body>
		<section class="accueil">
			<h1>VisitISEN</h1>
			<h3>Qui êtes-vous ?</h3>
			<button class="ambassadeur">Ambassadeur</button>
			<button class="visiteur">Visiteur</button>
		</section>
	</body>
</html>
