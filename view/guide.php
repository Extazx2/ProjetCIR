<?php

/*exec("java Dijkstra.java", $res)
			foreach ($res as $re) {
				echo $re;
			}*/


  if(isset($_GET['depart'])){
    echo 'Veuillez prendre en photo un qr code à proximité !
    <video autoplay="" id="video"></video>
    <script>var video = document.getElementById(\'video\');

          QCodeDecoder().decodeFromCamera(video, function(er,res){
    console.log(res);
    });</script>
';
  }
?>
