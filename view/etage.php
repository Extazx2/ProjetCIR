<?php
	echo '
  <div class="fixed-action-btn vertical click-to-toggle" style="bottom: 45px; right: 24px;">
    <a class="btn-floating btn-large red">
      <i class="material-icons">swap_vert</i>
    </a>
    <ul>
    ';
    $res = $db->query("SELECT idEtage, libelle FROM etage");
    foreach ($res as $re) {
    	echo '<li><a class="btn-floating red" href="index.php?etage='.$re->idEtage.'">'.$re->libelle.'</a></li>
    	';
    }
    echo '
    </ul>
  </div>
  ';
	echo '<h2 class="header center">'.$etage->getLibelle().'</h1>';
	$etage->affiche();
?>
