<?php

class Poi{
	private $id;
	private $nom;
	private $type;
	private $actif;
	private $salle;
	private $etage;
	private $posx;
	private $posy;
	private $db;

	public function __construct( $id, $db){
		$res = $db->query("SELECT nom, type, actif, salle, posx, posy, idEtage FROM qr WHERE idQr = ".$id);
		$this->id = $id;
		$this->db = $db;
		foreach ($res as $re) {
			$this->nom = $re->nom;
			$this->type = $re->type;
			$this->actif = $re->actif;
			$this->salle = $re->salle;
			$this->posx = $re->posx;
			$this->posy = $re->posy;
			$this->etage = $re->idEtage;
		}
	}


	public function affiche(){
		echo '

			L.marker([-'.$this->posy.','.$this->posx.'], {icon: '.$this->type.'})
			.addTo(map)
			.bindPopup($(\'<a href="index.php?list.php&poi='.$this->id.'">'.$this->nom.'</a>\')[0]);';
	}

	public function afficheList(){
		echo '
			<li><a href="index.php?list.php&poi='.$this->id.'" class="red-text">'.$this->nom.'</a></li>
          	<li class="divider"></li>';

	}
	public function getNom(){
		return $this->nom;
	}
	public function getLibelle(){
		$res = $this->db->query("SELECT libelle FROM qr WHERE idQr = ".$this ->id);
		if (!is_null($res))
		foreach ($res as $re) {
			return $re->libelle;
		}
		return NULL;
	}
	public function getEtage(){
		return $this->etage;
	}
	public function getSalle(){
		if (is_null($this->salle))
			return '';
		return $this->salle;
	}
	public function getId(){
		return $this->id;
	}

}

?>