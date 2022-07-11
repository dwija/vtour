<?php
 include "connx.php";
 // Tampilkan id gedung
    $qgd = "SELECT * FROM gedung WHERE id='$_GET[gd]'";
    $hgd = mysqli_query($konek, $qgd);
    $gd = mysqli_fetch_array($hgd);
 // Tampilkan nama lantai
    $querylantai = "SELECT lantai FROM ruang WHERE id_gedung='$gd[id]' && lantai='$_GET[lt]'";
    $hasillantai = mysqli_query($konek, $querylantai);
    $n = mysqli_fetch_array($hasillantai);
?>
<!DOCTYPE html>
<html lang="en">
	<head>
		<title>Tour Gedung <?=$gd['gedung']?></title>
		<meta charset="utf-8">
		<link rel="icon" href="images/favicon.ico">
		<link rel="shortcut icon" href="images/favicon.ico" />
		<link rel="stylesheet" href="css/style.css">
		<link rel="stylesheet" href="js/fancybox/jquery.fancybox.css?v=2.1.0">
		
	</head>
	<body>
<!--==============================header=================================-->
		<header>
			<div class="container_12">
				<div class="grid_12">
					<div class="menu_block">
						<nav class="horizontal-nav horizontalNav-notprocessed">
							<ul class="sf-menu center ">
								<li><a href=""><<</a></li>
								<li class="current"><a href="tour">VIRTUAL TOURS</a></li>
								<li><a href="tentang">Tentang</a></li>
								<li><a href="bantuan">Bantuan</a></li>
								<li><a href="">>></a></li>
							</ul>
						</nav>
						<div class="clear"></div>
					</div>
				</div>
				<div class="grid_12">
					<h1>
						<a href="home">
							<img src="images/logo.png" alt="Universitas Widya Dharma Pontianak">
						</a>
					</h1>
				</div>
			</div>
		</header>
<!--==============================Content=================================-->
		<div class="content">
			<div class="container_12">
				<div class="grid_8">
					<h3>Gedung <?=$gd['gedung']?></h3>
					<?php					
					// Tampilkan daftar ruang sesuai dengan lantai yang dipilih
					$qlantai = "SELECT * FROM ruang WHERE id_gedung='$gd[id]' && lantai='$n[lantai]' ORDER BY id ASC";		 
					$hruang = mysqli_query($konek, $qlantai);
					$jumlahruang  = mysqli_num_rows($hruang);
					?>
					<div class="text1 col1">Lantai <?= $n['lantai']?></div>
					<?php
					// Apabila ditemukan ruang dalam gedung 1 dan lantai
					if ($jumlahruang > 0){
					while($r=mysqli_fetch_array($hruang)){
					?>
					<div class="blog">
						<a class="fancybox" href="<?=$r['image']?>" title="<?=$r['judul']?>" data-fancybox-group="gallery">
							<img src="<?=$r['image']?>" alt="<?=$r['judul']?>" title="<?=$r['judul']?>" class="img_inner">
						</a>
						<p><?=$r['keterangan']?></p>
					</div>
					<?php } } else { ?>
					<div class="blog">
						<img src="images/ban_Fransiskus-Asisi.jpg" alt="">
						<div class="clear"></div>
					</div>
					<?php } ?>
				</div>
				<div class="grid_3 prefix_1">
					<h5>Lantai</h5>
					<?php
					 // Tampilkan list lantai
						$qylantai = "SELECT lantai, id_gedung FROM ruang WHERE id_gedung='$gd[id]' GROUP BY lantai ORDER BY id ASC;";
						$hylantai = mysqli_query($konek, $qylantai);
					?>
					<ul class="list">
						<?php while($lt=mysqli_fetch_array($hylantai)){ ?>
						<li><a href="tour<?=$lt['id_gedung']?>-<?=$lt['lantai']?>">Lantai <?=$lt['lantai']?> </a></li>
						<?php } ?>
					</ul>
					<h5>Gedung</h5>
					<?php
					 // Tampilkan list gedung
						$qgedung = "SELECT * FROM gedung ORDER BY id ASC";
						$hgedung = mysqli_query($konek, $qgedung);
					?>
					<ul class="list">
						<?php while($g=mysqli_fetch_array($hgedung)){ ?>
						<li><a href="tour<?=$g['id']?>-1"><?=$g['gedung']?></a></li>
						<?php } ?>
					</ul>
				</div>
			</div>
		</div>
<!--==============================footer=================================-->
		<footer>
			<div class="container_12">
				<div class="grid_12">
					<div class="copy">
						2022 (c) Virtual Tour | <a href="#">Universitas Widya Dharma Pontianak</a>
					</div>
				</div>
			</div>
		</footer>
		<script src="js/jquery.js"></script>
		<script src="js/jquery-migrate-1.2.1.js"></script>
		<script src="js/script.js"></script>
		<script src="js/superfish.js"></script>
		<script src="js/jquery.ui.totop.js"></script>
		<script src="js/jquery.equalheights.js"></script>
		<script src="js/jquery.mobilemenu.js"></script>
		<script src="js/jquery.easing.1.3.js"></script>
		<script type="text/javascript" src="js/fancybox/jquery.fancybox.pack.js?v=2.1.0"></script>
		<script>
		$(document).ready(function(){
			$().UItoTop({ easingType: 'easeOutQuart' });
			$('.fancybox').fancybox();
		});
		</script>
	</body>
</html>