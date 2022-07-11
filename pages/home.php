<!DOCTYPE html>
<html lang="en">
	<head>
		<title>Beranda</title>
		<meta charset="utf-8">
		<link rel="icon" href="images/favicon.ico">
		<link rel="shortcut icon" href="images/favicon.ico" />
		<link rel="stylesheet" href="booking/css/booking.css">
		<link rel="stylesheet" href="css/camera.css">
		<link rel="stylesheet" href="css/owl.carousel.css">
		<link rel="stylesheet" href="css/style.css">
	</head>
	<body class="page1" id="top">
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
		<div class="slider_wrapper">
			<div id="camera_wrap" class="">
				<div data-src="images/slide.jpg">
					<div class="caption fadeIn">
						<h2>Universitas Widya Dharma</h2>
						<div class="price">
							<span>Pontianak</span>
						</div>
						<a href="#">Go</a>
					</div>
				</div>
				<div data-src="images/slide1.jpg">
					<div class="caption fadeIn">
						<h2>Virtual Tours</h2>
						<div class="price">
							<span>UWDP</span>
						</div>
						<a href="#">Go..</a>
					</div>
				</div>
				<div data-src="images/slide2.jpg">
					<div class="caption fadeIn">
					</div>
				</div>
			</div>
		</div>
<!--==============================Content=================================-->
		<div class="content">
			<div class="container_12">
				<div class="grid_3">
					<div class="banner">
						<img src="images/ban_Fransiskus-Asisi.jpg" alt="">
						<div class="label">
							<div class="title">Gedung</div>
							<div class="price"><span>Fransiskus Assisi</span></div>
							<a href="tour1-1">Tour</a>
						</div>
					</div>
				</div>
				<div class="grid_3">
					<div class="banner">
						<img src="images/ban_Lorenzo-Brindisi.jpg" alt="">
						<div class="label">
							<div class="title">Gedung</div>
							<div class="price"><span>Lorenzo Brindisi</span></div>
							<a href="tour2-1">Tour</a>
						</div>
					</div>
				</div>
				<div class="grid_3">
					<div class="banner">
						<img src="images/ban_Padre-Pio.jpg" alt="">
						<div class="label">
							<div class="title">Gedung</div>
							<div class="price"><span>Padre Pio</span></div>
							<a href="tour3-1">Tour</a>
						</div>
					</div>
				</div>
				<div class="grid_3">
					<div class="banner">
						<img src="images/ban_Santa-Clara.jpg" alt="">
						<div class="label">
							<div class="title">Gedung</div>
							<div class="price"><span>Santa Clara</span></div>
							<a href="tour4-1">Tour</a>
						</div>
					</div>
				</div>
				<div class="clear"></div>
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
		<script src="js/owl.carousel.js"></script>
		<script src="js/camera.js"></script>
		<!--[if (gt IE 9)|!(IE)]><!-->
		<script src="js/jquery.mobile.customized.min.js"></script>
		<!--<![endif]-->
		<script>
			$(document).ready(function(){
			jQuery('#camera_wrap').camera({
				loader: false,
				pagination: false ,
				minHeight: '444',
				thumbnails: false,
				height: '48.375%',
				caption: true,
				navigation: true,
				fx: 'mosaic'
			});
			/*carousel*/
			var owl=$("#owl");
				owl.owlCarousel({
				items : 2, //10 items above 1000px browser width
				itemsDesktop : [995,2], //5 items between 1000px and 901px
				itemsDesktopSmall : [767, 2], // betweem 900px and 601px
				itemsTablet: [700, 2], //2 items between 600 and 0
				itemsMobile : [479, 1], // itemsMobile disabled - inherit from itemsTablet option
				navigation : true,
				pagination : false
				});
			$().UItoTop({ easingType: 'easeOutQuart' });
			});
		</script>
	</body>
</html>