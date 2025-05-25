<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="usuario.aspx.cs" Inherits="Web1.ventanas.usuario" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin="">
	<link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600;700&display=swap" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="../css/estilos.css">
	<link rel="stylesheet" type="text/css" href="../css/estilos2.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <title></title>
	<style>
    .form-container {
        background-color: #f2f2f2;
        padding: 20px;
        border-radius: 5px;
        width: 300px;
        margin: 0 auto;
    }

    .form-style {
        margin-bottom: 20px;
    }

    .label1 {
        font-weight: bold;
        display: block;
    }

    .custom-input {
        padding: 5px;
        border: 1px solid #ddd;
        border-radius: 5px;
        margin-bottom: 10px;
        width: 100%;
    }

    .custom-input1 {
        padding: 8px 15px;
        background-color: #4CAF50;
        border: none;
        color: white;
        border-radius: 5px;
        cursor: pointer;
    }
</style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <br />


            <header>
                <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/principal.aspx" OnClientClick="mostrarMensaje()">
    <img id="Image1" class="logo" src="../imagenes/Cesitar2.jpg" />
                </asp:LinkButton>
                <script type="text/javascript">
                    function mostrarMensaje() {
                        alert('¡Bienvenido a la página principal!');
                    }
                </script>
		<div class="container-icon11"></div>
		<div class="container-icon10"></div>
		<div class="container-icon9"></div>
		<div class="container-icon8">
			<a href="../ventanas/informacion.aspx">
			<center><svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="icon-cart">
				<path stroke-linecap="round" stroke-linejoin="round" d="M11.25 11.25l.041-.02a.75.75 0 011.063.852l-.708 2.836a.75.75 0 001.063.853l.041-.021M21 12a9 9 0 11-18 0 9 9 0 0118 0zm-9-3.75h.008v.008H12V8.25z" />
			</svg></center>
			</a>
			<center><p>Información</p></center>
		</div>
		<div class="container-icon7"></div>
		<div class="container-icon6">
			<a href="../ventanas/catalogo.aspx">	
			<center>
				<svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="icon-cart">
					<path stroke-linecap="round" stroke-linejoin="round" d="M15.75 10.5V6a3.75 3.75 0 10-7.5 0v4.5m11.356-1.993l1.263 12c.07.665-.45 1.243-1.119 1.243H4.25a1.125 1.125 0 01-1.12-1.243l1.264-12A1.125 1.125 0 015.513 7.5h12.974c.576 0 1.059.435 1.119 1.007zM8.625 10.5a.375.375 0 11-.75 0 .375.375 0 01.75 0zm7.5 0a.375.375 0 11-.75 0 .375.375 0 01.75 0z" />
				</svg>
			</center>
			</a>
			<center><p>Catalogo</p></center>
		</div>
		<div class="cantainer-icon5"></div>
		<div class="container-icon4">
			<a href="../ventanas/usuario.aspx">
			<center>
				<svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="icon-cart">
					<path stroke-linecap="round" stroke-linejoin="round" d="M17.982 18.725A7.488 7.488 0 0012 15.75a7.488 7.488 0 00-5.982 2.975m11.963 0a9 9 0 10-11.963 0m11.963 0A8.966 8.966 0 0112 21a8.966 8.966 0 01-5.982-2.275M15 9.75a3 3 0 11-6 0 3 3 0 016 0z" />
				</svg>
			</center>
			</a>
			<center><p>Usuario</p></center>
		</div>
		<div class="container-icon3"></div>
		<div class="container-icon2">
			<a href="../ventanas/reclamaciones.aspx">
			<center>
				<svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="icon-cart">
					<path stroke-linecap="round" stroke-linejoin="round" d="M12 6.042A8.967 8.967 0 006 3.75c-1.052 0-2.062.18-3 .512v14.25A8.987 8.987 0 016 18c2.305 0 4.408.867 6 2.292m0-14.25a8.966 8.966 0 016-2.292c1.052 0 2.062.18 3 .512v14.25A8.987 8.987 0 0018 18a8.967 8.967 0 00-6 2.292m0-14.25v14.25" />
				</svg>
			</center>
			</a>
			<center><p>Reclamaciones</p></center>
		</div>	
		<div class="container-icon1"></div>
		<div class="container-icon">
		<a href="../ventanas/carrito.aspx">
			<center>
				<svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="icon-cart">
					<path stroke-linecap="round" stroke-linejoin="round" d="M2.25 3h1.386c.51 0 .955.343 1.087.835l.383 1.437M7.5 14.25a3 3 0 00-3 3h15.75m-12.75-3h11.218c1.121-2.3 2.1-4.684 2.924-7.138a60.114 60.114 0 00-16.536-1.84M7.5 14.25L5.106 5.272M6 20.25a.75.75 0 11-1.5 0 .75.75 0 011.5 0zm12.75 0a.75.75 0 11-1.5 0 .75.75 0 011.5 0z" />
				</svg>
			</center>
		</a>
		<center><p>Carrito</p></center>
		</div>
	</header>
	<hr>
	<br>
    <br>
    <br>
            <div class="form-container">
                <div class="form-style">
                    <div style="text-align: center;">
                        <label class="label1">Usuario: </label>
                        <asp:TextBox ID="usuario1" runat="server" CssClass="custom-input"></asp:TextBox>
                        <asp:CustomValidator ID="CustomValidatorUsuario" runat="server"
                            ClientValidationFunction="validateUsuario" ErrorMessage="El usuario debe tener al menos 2 caracteres y comenzar con mayúscula."
                            ControlToValidate="usuario1" Display="Dynamic"></asp:CustomValidator>
                    </div>
                    <div style="text-align: center;">
                        <label class="label1">Contraseña:</label>
                        <asp:TextBox ID="pass" runat="server" TextMode="Password" CssClass="custom-input"></asp:TextBox>
                    </div>
                    <div style="text-align: center;">
                        <asp:Button ID="accion" runat="server" Text="Aceptar" CssClass="custom-input1" OnClick="accion_Click" />
                    </div>
                    <div style="text-align: center;">
                        <asp:Label ID="lblMensajeError" runat="server" ForeColor="Red" Text=""></asp:Label>
                    </div>
                </div>
            </div>

			<script type="text/javascript">
                function validateUsuario(source, args) {
                    var usuario = args.Value;
                    if (usuario.length < 2 || usuario[0] !== usuario[0].toUpperCase()) {
                        args.IsValid = false;
                    } else {
                        args.IsValid = true;
                    }
                }
            </script>

            <div>
	    <footer id="colorpie">
	    	<div class="columnas">
		    	<section class="columnas-item">
		    		<img class="margen" src="../imagenes/logoPie.png">
		    		<br>
		    		<p>Somos  especialistas  en  ropa  de  niños, pioneros en confección de prendas de vestir para los engreídos del hogar.</p>
		    		<br>
		    		<p>Síguenos en:</p>
		    		<br>
                    <asp:LinkButton ID="btnFb" runat="server" CssClass="buttonFb" OnClick="RedirectToFacebook">
<img class="zice" src="../imagenes/logoFB.png" />
                    </asp:LinkButton>
                    <asp:LinkButton ID="btnIg" runat="server" CssClass="buttonIg" OnClick="RedirectToInstagram">
    <img class="zice" src="../imagenes/logoINSTG.png" />
                    </asp:LinkButton>
		    	</section>
		    	<section class="columnas-item">
		    		<h2 class="pie">Enlaces Rápidos</h2>
		    		<ul type="circle">
		    			<li>Bautizo</li>
		    			<br>
		    			<li>Primera Comunión</li>
		    			<br>
		    			<li>Fiesta de Promoción</li>
		    			<br>
		    			<li>Quince Años</li>
		    			<br>
		    			<li>Matrimonio</li>
		    			<br>
		    			<li>Fiesta de Cumpleaños</li>
		    			<br>
		    			<li>Baby Shower</li>
		    			<br>
		    			<li>Moda Casual</li>
		    		</ul>
		    	</section>

		    	<section class="columnas-item">
		    		<h2 class="pie">Atención al Cliente</h2>
		    		<h2 class="pie">(01) 428-1349</h2>
		    		<br>
		    		<p>Lunes a sábado: 10:30 a.m. a 9:00 p.m.</p>
		    		<br>
		    		<p>Dirección: Jirón de la Unión 425, Lima - Perú</p>
		    		<br>
		    		<p>Correo: creacionescesitar@creacionescesitar.com</p>
		    	</section>
	    	</div>
	    </footer>
    </div>
	</div>
	</form>
</body>
</html>
