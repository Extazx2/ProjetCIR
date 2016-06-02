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
	<script>

		var canvas = document.getElementById(\'myCanvas\');
		var context = canvas.getContext(\'2d\');

		function getMousePos(canvas, evt) {
			var rect = canvas.getBoundingClientRect();
			alert("x: "+evt.clientX+" y: "+evt.clientY);
			return {
				x: evt.clientX - rect.left,
				y: evt.clientY - rect.top
			};
		}


    	window.onload = function() {
			$("canvas")
			.drawImage({
				source:"img/'.$this->img.'",
				fromCenter: false,
				x: 0, y: 0,
			})
';

		foreach ($this->poi as $poi) {
			$poi->affiche();
		}

		echo '};</script>';
	}
}

?>
