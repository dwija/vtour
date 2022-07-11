		<?php 
			if (@$_GET['pg']=='home'){ 
				include "pages/home.php";				
			}elseif (@$_GET['pg']=='tour'){
				include "pages/tour.php";
			}elseif (@$_GET['pg']=='tentang'){
				include "pages/tentang.php";
			}elseif (@$_GET['pg']=='bantuan'){
				include "pages/bantuan.php";			
			}elseif (@$_GET['pg']=='tourx'){
				include "pages/tourx.php";		
			}else{
				include "pages/home.php";
			}		
		?>
