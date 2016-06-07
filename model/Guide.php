<?php	

class Guide{
	$depart;
	$arrivee;
	$res;

	public function __construct ($depart, $arrivee, $db_name, $db_user, $db_pass, $db_host){ 
		shell_exec("cd dijkstra");
		exec("java -cp \"mysql-connector-java-5.1.39-bin.jar\":. main ".$depart." ". $arrivee." ".$db_name." ". $db_user." ".$db_pass." ". $db_host , $res);
	}

	public function getRes(){
		return $this->res;
	}
}
?>