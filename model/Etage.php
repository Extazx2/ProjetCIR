<?php

class Etage{
	private $idEtage;
	private $img;
	private $libelle;
	private $min;
	private $db;
	private $poi = array();

	public function __construct($id, $db){
		$res = $db->query("SELECT * FROM etage WHERE idEtage = ".$id);
		$this->db = $db;
		if (!is_bool($res)){
			foreach ($res as $obj) {
				$this->idEtage = $obj->idEtage;
				$this->img = $obj->img;
				$this->libelle = $obj->libelle;
				$this->min = $obj->min;

			}
			$res = $db->query("SELECT idQr FROM qr WHERE afficher = 1 AND idEtage = ".$id);
			foreach ($res as $obj) {
				$this->poi[] = new Poi($obj->idQr, $db);
			}
		}
	}

	public function getLibelle(){
		return strtoupper($this->libelle);
	}
	public function getMin(){
		return $this->min;
	}

	public function affiche(){
		$size = getimagesize('img/'.$this->img);
	echo '<div id="image-map"></div>

	<script>
		var w = '.$size['0'].',
		    h = '.$size['1'].',
		    url = "img/'.$this->img.'";
	</script>
	<script src="js/balise.js"></script>
	<script>';
	
		foreach ($this->poi as $po) {
			$po->affiche();
		}

	echo '</script>';


	}

	public function afficheList(){
		echo '<h2 class="header center">'.$this->libelle.'</h2>
				<a class="dropdown-button red btn" href="#" data-activates="dropdown1">Points d\'intêret</a>

					<ul id="dropdown1" class="dropdown-content">';

		foreach ($this->poi as $po) {
			$po->afficheList();
		}
		echo '</ul>';
	}
}

?>
