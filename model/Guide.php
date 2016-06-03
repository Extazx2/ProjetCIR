<?php	

class Guide{
	$depart;
	$arrivee;
	$res;

	public function __construct ($depart, $arrivee){ 
		exec("java Dijkstra.java ".$depart." ". $arrivee, $res)
			foreach ($res as $re) {
				echo $re;
			}
	}
}


?>