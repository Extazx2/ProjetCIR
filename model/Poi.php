<?php

class Poi{
	private $id;
	private $nom;
	private $actif;
	private $salle;
	private $posx;
	private $posy;

	public function __construct( $obj){
		$this->id = $obj->idQr;
		$this->nom = $obj->nom;
		$this->actif = $obj->actif;
		$this->salle = $obj->salle;
		$this->posx = $obj->posx;
		$this->posy = $obj->posy;
	}

}

?>