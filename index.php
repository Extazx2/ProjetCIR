<!DOCTYPE html>
<html lang="fr">
	<?php 
		require 'model/Bdd.php';
		require "model/Etage.php";
		$db = new Bdd('visitisen');
		session_start();
	?>
	<head>
		<title>VisitISEN</title>

	  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

	  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
	  <link href="css/materialize.css" type="text/css" rel="stylesheet" media="screen,projection"/>
	  <link href="css/style.css" type="text/css" rel="stylesheet" media="screen,projection"/>

		<link rel="shortcut icon" type="image/x-icon" href="img/isen.ico"/>
	</head>

	<body>

	  <nav class="red lighten-1" role="navigation">
	    <div class="nav-wrapper container"><a id="logo-container" href="index.php" class="brand-logo">Visitisen</a>
	      <ul class="right hide-on-med-and-down">
	        <li><a href="index.php">Accueil</a></li>
	        <li><a href="index.php?etage=1">Carte</a></li>
	      </ul>
	      <ul id="nav-mobile" class="side-nav">
	        <li><a href="index.php">Accueil</a></li>
	        <li><a href="index.php?etage=1">Carte</a></li>
	        <li><a href="index.php?faq=1">FaQ</a></li>
	      </ul>
	      <a href="#" data-activates="nav-mobile" class="button-collapse"><i class="material-icons">menu</i></a>
	    </div>
	  </nav>

		<?php
			if (isset($_GET['etage'])){
				$etage = new Etage($_GET['etage'], $db);
				require("view/etage.php");
			}
			elseif (isset($_GET['faq'])){
				require("view/faq.php");
			}
			else
				require("view/welcome.php");
		?>

	  <script src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
		<script src="https://use.fontawesome.com/234a7fefe5.js"></script>
	  <script src="js/materialize.js"></script>
	  <script src="js/init.js"></script>
	</body>
</html>
