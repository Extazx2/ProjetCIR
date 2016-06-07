<?php
    echo '<div class="container">
    		<div class="row"></div>
			<div class="row">
				<a class="col s12 waves-effect waves-light btn red red lighten-1">Scannez un QRCode à proximité</a>
			</div>
		</div>
		<div class="container">
			<div id="reader" class="col s12">
			</div>
			<h6 class="center">Result</h6>
			<span id="read" class="center"></span>
			<br>

			<h6 class="center">Read Error (Debug only)</h6>
			<span class="center">Will constantly show a message, can be ignored</span>
			<span id="read_error" class="center"></span>

			<br>
			<h6 class="center">Video Error</h6>
			<span id="vid_error" class="center"></span>
		</div>

    <script>
    $(document).ready(function(){
		$(\'#reader\').html5_qrcode(function(data){
			$(\'#read\').html(data);
			document.location.href = "index.php?etage=1&arrivee='.$_GET['arrivee'].'&depart=" + data;
		},
		function(error){
			$(\'#read_error\').html(error);
		}, function(videoError){
			$(\'#vid_error\').html(videoError);
		});
	});</script>';
?>
