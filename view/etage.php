<?php
  
  $get = '';
  if (isset($_GET['arrivee']) && isset($_GET['depart'])){
    $guide = new Guide($_GET['depart'], $_GET['arrivee'], $db_name, $db_user, $db_pass, $db_host);
    $get = '&amp;arrivee='.$_GET['arrivee'].'&amp;depart='.$_GET['depart'];
  }


	echo '
  <div class="fixed-action-btn vertical click-to-toggle" style="bottom: 45px; right: 24px;">
    <a class="btn-floating btn-large red">
      <i class="material-icons">swap_vert</i>
    </a>
    <ul>
    ';
    $res = $db->query("SELECT idEtage, libelle, min FROM etage ORDER BY idEtage DESC");
    foreach ($res as $re) {
    	echo '<li><a class="btn-floating red" href="index.php?etage='.$re->idEtage.$get.'">'.$re->min.'</a></li>
    	';
    }
    echo '
    </ul>
  </div>
  ';
	echo '<h2 class="header center">'.$etage->getLibelle().'</h2>';

  if (isset($_GET['arrivee']) && isset($_GET['depart']))
    $etage->afficheChemin($guide->getRes());
  else
    $etage->affiche();
?>
