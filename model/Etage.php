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
		// create the slippy map
		var map = L.map("image-map", {
		  minZoom: 1,
		  maxZoom: 4,
		  center: [0, 0],
		  zoom: 1,
		  crs: L.CRS.Simple
		});

		// dimensions of the image
		var w = '.$size['0'].',
		    h = '.$size['1'].',
		    url = "img/'.$this->img.'";

		// calculate the edges of the image, in coordinate space
		var southWest = map.unproject([0, h], map.getMaxZoom()-1);
		var northEast = map.unproject([w, 0], map.getMaxZoom()-1);
		var bounds = new L.LatLngBounds(southWest, northEast);

		// add the image overlay, 
		// so that it covers the entire map
		L.imageOverlay(url, bounds).addTo(map);

		// tell leaflet that the map is exactly as big as the image
		map.setMaxBounds(bounds);

		var greenIcon = L.icon({
    		iconUrl: "img/leaf-green.png",
    		shadowUrl: "img/leaf-shadow.png",
    		iconSize:     [38, 95], // size of the icon
    		shadowSize:   [50, 64], // size of the shadow
    		iconAnchor:   [22, 94], // point of the icon which will correspond to markers location
    		shadowAnchor: [4, 62],  // the same for the shadow
    		popupAnchor:  [-3, -76] // point from which the popup should open relative to the iconAnchor
		});';
	
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
