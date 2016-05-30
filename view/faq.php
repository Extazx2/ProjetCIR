<?php
	echo '<h2 class="header center">Foire au Question</h2>
	';
	$res = $db->query("SELECT question, reponse FROM faq ORDER BY question");
	foreach ($res as $re) {
		echo'<h5 class="red-text">'.$re->question.'</h5>
		<p>'.$re->reponse.'</p>
		';
	}

?>