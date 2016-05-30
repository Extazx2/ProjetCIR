<?php	

class Etage{
	private $idEtage;
	private $img;
	private $libelle;
	private $poi = array();

	public function __construct($id, $db){
		$res = $db->query("SELECT * FROM etage WHERE idEtage = ".$id);
		if (!is_bool($res)){
			foreach ($res as $obj) {
				$this->idEtage = $obj->idEtage;
				$this->img = $obj->img;
				$this->libelle = $obj->libelle;
			}
			$res = $db->query("SELECT idQr, nom, type, actif, salle, posx, posy FROM qr WHERE afficher = 1 AND idEtage = ".$id);
			foreach ($res as $obj) {
				$this->poi[] = new Poi($obj);
			}
		}
	}

	public function getLibelle(){
		return $this->libelle;
	}

	public function affiche(){
		$size = getimagesize('img/'.$this->img);
		echo '<canvas id="myCanvas" width="'.$size['0'].'" height="'.$size['1'].'" >
    </canvas>
    <script >

		var canvas = document.getElementById("myCanvas");
		var context = canvas.getContext("2d");
		var imageFond = new Image();
		var imageBalise = new Image();

		imageFond.onload = function() {
        	context.drawImage(imageFond, 0, 0);
		};
		imageFond.src = "img/etage0.png";';
		foreach ($this->poi as $po) {
			echo 'alert("pin");';
			$po->affiche();
		}

		echo '</script>';
	}
}

?>
