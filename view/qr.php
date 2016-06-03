<?php

  if(isset($_GET['arrivee'])){
    echo '
    <div class="container">
    	<div class="row"></div>
			<div class="row">
				<a class="col s12 waves-effect waves-light btn red red lighten-1">Scannez un QRCode à proximité</a>
			</div>
	</div>
    <video autoplay="" id="video"></video>
    <script>var video = document.getElementById(\'video\');

          QCodeDecoder().decodeFromCamera(video, function(er,res){
    console.log(res);
    });</script>
';
  }
?>
