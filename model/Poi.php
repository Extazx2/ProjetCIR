<?php

class Poi{
	private $id;
	private $nom;
	private $type;
	private $actif;
	private $salle;
	private $posx;
	private $posy;
	private $db;

	public function __construct( $id, $db){
		$res = $db->query("SELECT nom, type, actif, salle, posx, posy FROM qr WHERE idQr = ".$id);
		$this->id = $id;
		$this->db = $db;
		foreach ($res as $re) {
			$this->nom = $re->nom;
			$this->type = $re->type;
			$this->actif = $re->actif;
			$this->salle = $re->salle;
			$this->posx = $re->posx;
			$this->posy = $re->posy;
		}
	}


	public function affiche(){
		echo '
			L.marker([-100,100], {icon: greenIcon}).addTo(map).bindPopup("'.$this->nom.'");';
	}

	public function afficheList(){
		echo '
			<li><a href="index.php?list.php&depart='.$this->id.'" class="red-text">'.$this->nom.'</a></li>
          	<li class="divider"></li>';

	}
	public function getNom(){
		return $this->nom;
	}
	public function getLibelle(){
		$res = $db->query("SELECT libelle FROM qr WHERE idQr = ".$this ->id);
		foreach ($res as $re) {
			return $re->libelle;
		}
	}

}

?>