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
		imageBalise.onload = function() {
        	context.drawImage(imageBalise, '.$this->posx.', '.$this->posy.', 141, 192);
		};

		imageBalise.src = "img/pin.png";
		';


	}


}

?>