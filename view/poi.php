<?php

	echo '
	<div class="section no-pad-bot" id="index-banner">
    <div class="container">
      <br><br>
      <h1 class="header center red-text">'.$poi->getNom().'</h1>
      <div class="row center">
        <h5 class="header col s12 light">'.$poi->getLibelle().'</h5>
      </div>
      <br><br>
    </div>
  </div>
  <footer>
    <div class="container">
      <div class="row">
        <a class="col s6 waves-effect waves-light btn red" href="index.php?etage='.$poi->getEtage().'">Retour à la carte</a>
        <a class="col s6 waves-effect waves-light btn red" href="index.php?arrivee='.$poi->getId().'">Me guider</a>
      </div>
    </div>
  </footer>';

?>