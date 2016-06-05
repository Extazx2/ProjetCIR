<?php

class Bdd{
	private $name;
	private $user;
	private $pass;
	private $host;
	private $pdo;

	public function __construct($db_name, $db_user = 'visitisen', $db_pass = 'isenBrest29', $db_host = 'localhost'){
		$this->name = $db_name;
		$this->user = $db_user;
		$this->pass = $db_pass;
		$this->host = $db_host;
	}
	private function getPDO(){
		if (!isset($this->pdo)){
			$pdo = new PDO('mysql:dbname='.$this->name.';host='.$this->host.'', $this->name, $this->pass); 
			$pdo -> setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
			$this->pdo = $pdo;
		}
		return $this->pdo;
		
	}
	public function query($requete){
		$pdo = $this->getPDO();
		$res = $pdo->query($requete);
		$datas = $res->fetchAll(PDO::FETCH_OBJ);
		return $datas;
	}

}

?>
