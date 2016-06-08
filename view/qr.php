<?php
    echo '<div class="container">
    	<div class="row"></div>
			<div class="row">
				<a class="col s12 waves-effect waves-light btn red red lighten-1">Scannez un QRCode à proximité</a>
			</div></div>
	<div id="reader" style="width:300px;height:250px">
	</div>
    <script> $(\'#reader\').html5_qrcode(function(data){
         location.href = "index.php?etage=1&amp;arrivee='.$_GET['arrivee'].'$amp;depart=" + data;
    });
    </script>';

  //.load("index.php?etage=1&amp;arrivee='.$_GET['arrivee'].'$amp;depart=" + res);

?>
