<?php
	echo '
  <div class="fixed-action-btn vertical click-to-toggle" style="bottom: 45px; right: 24px;">
    <a class="btn-floating btn-large red">
      <i class="material-icons">swap_vert</i>
    </a>
    <ul>
    ';
    $res = $db->query("SELECT idEtage, libelle, min FROM etage ORDER BY idEtage DESC");
    foreach ($res as $re) {
    	echo '<li><a class="btn-floating red" href="index.php?etage='.$re->idEtage.'">'.$re->min.'</a></li>
    	';
    }
    echo '
    </ul>
  </div>
  ';
	echo '<h2 class="header center">'.$etage->getLibelle().'</h2>';
	$etage->affiche();
?>
