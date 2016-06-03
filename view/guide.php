<?php

/*exec("java Dijkstra.java", $res)
			foreach ($res as $re) {
				echo $re;
			}*/


  if(isset($_GET['depart'])){
    echo 'Veuillez prendre en photo un qr code à proximité !
    <script>var video = document.getElementById(\'camera\');

          QCodeDecoder().decodeFromCamera(video, function(er,res){
    console.log(res);
    });</script>';
  }
?>
