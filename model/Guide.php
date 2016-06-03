<?php	

class Guide{
	$depart;
	$arrivee;
	$res;

	public function __construct ($depart, $arrivee, $db_name, $db_user, $db_pass, $db_host){ 
		exec("java Dijkstra.java ".$depart." ". $arrivee." ".$db_name." ". $db_user." ".$db_pass." ". $db_host , $res)
			foreach ($res as $re) {
				echo $re;
			}
	}
}


?>