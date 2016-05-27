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
			$res = $db->query("SELECT idQr, nom, actif, salle, posx, posy FROM qr WHERE poi = 1 AND idEtage = ".$id);
			foreach ($res as $obj) {
				$poi[] = new Poi($obj);
			}
		}
	}

	public function getLibelle(){
		return $this->libelle;
	}

	public function affiche(){
		echo '<img src="img/'.$this->img.'">';
	}
}
	

?>
