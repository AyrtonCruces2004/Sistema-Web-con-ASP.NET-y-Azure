<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Web1.WebForm1" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600;700&display=swap" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="css/estilos.css">
	<title>Creaciones Cesitar</title>
</head>
<body>
	<?php  
	include 'include/Cabecerap.php';
	?>
	<hr>
	<main>
		<figure>
			<img src="imagenes/principal1.jpg">
		</figure>
		<div class="container-items">
			<div class="item">
				<figure>
					<img src="imagenes/Cesitar4.jpg">
				</figure>
				<div class="info-product">
					<h2>Ropa para bebes</h2>
				</div>
			</div>
			<div class="item">
				<figure>
					<img src="imagenes/Cesitar3.jpg">
				</figure>
				<div class="info-product">
					<h2>70 Años Proporcionando<br> Alegrias a los Hogares</h2>
				</div>
			</div>
			<div class="item">
				<figure>
					<img src="imagenes/Cesitar5.jpg">
				</figure>
				<div class="info-product">
					<h2>Ropa para niños</h2>
				</div>
			</div>
		</div>
		<?php  
	include 'include/pie.php';
	?>
	</main>
	<br>
	<br>
</body>
</html>