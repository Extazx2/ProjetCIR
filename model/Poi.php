<?php

class Poi{
	private $id;
	private $nom;
	private $type;
	private $actif;
	private $salle;
	private $posx;
	private $posy;

	public function __construct( $obj){
		$this->id = $obj->idQr;
		$this->nom = $obj->nom;
		$this->type = $obj->type;
		$this->actif = $obj->actif;
		$this->salle = $obj->salle;
		$this->posx = $obj->posx;
		$this->posy = $obj->posy;
	}

	public function affiche(){
		echo '
		.drawImage({
			name: "pin",
			source:"img/pin.png",
			x: '.$this->posx.', y: '.$this->posy.',
			width: 180,
			height: 250
			})';
	}

	public function afficheList(){
		echo '
			<li><a href="index.php?list.php&depart='.$this->id.'" class="red-text">'.$this->nom.'</a></li>
          	<li class="divider"></li>';

	}

}

?>