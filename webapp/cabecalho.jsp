<!DOCTYPE html>

<%@ include file="config.jsp"%>

<html lang="zxx">

<head>
<meta charset="UTF-8">
<meta name="description" content="Imobili�ria Jopaulo - Encontre casas, apartamentos, terrenos e im�veis para compra, venda e aluguel.">
<meta name="keywords" content="Comprar, alugar, im�veis, apartamentos, Bel�m">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Sistema Imobili�rio</title>

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css?family=Montserrat:300,400,500,600,700,800,900&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Lato:400,700,900&display=swap"
	rel="stylesheet">

<!-- Css Styles -->
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
<link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
<link rel="stylesheet" href="css/nice-select.css" type="text/css">
<link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
<link rel="stylesheet" href="css/magnific-popup.css" type="text/css">
<link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
<link rel="stylesheet" href="css/style.css" type="text/css">

<!-- Faviicon -->
<!-- <link rel="shortcut icon" href="mg/favicon.ico" type="image/x-icon"> -->
<!-- <link rel="icon" href="img/favicon.ico" type="image/x-icon"> -->
</head>

<body>
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<!-- Offcanvas Menu Wrapper Begin -->
	<div class="offcanvas-menu-overlay"></div>
	<div class="offcanvas-menu-wrapper">
		<div class="canvas-close">
			<span class="icon_close"></span>
		</div>
		<div class="logo">
			<a href="./index.jsp"> <img src="img/logo.png" alt="">
			</a>
		</div>
		<div id="mobile-menu-wrap"></div>
		<div class="om-widget">
			<ul>
				<li><i class="icon_mail_alt"></i> <%=email%></li>
				<li>
					<a 	<i class="fa fa-whatsapp"></i>  
						class="text-dark"
						target="_blank" 
						title="Clique aqui pra iniciar uma conversa"
						href="https://api.whatsapp.com/send?1=pt_BR&phone=<%=whatsappLink%>">
						<%=whatsapp%>
					</a>
				</li>
				<li><i class="fa fa-mobile-phone"></i> <%=fixo%></li>
			</ul>
			<a href="imoveis.jsp" class="hw-btn">Ver Im�veis</a>
		</div>
		<div class="om-social">
			<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
				class="fa fa-twitter"></i></a> <a href="#"><i
				class="fa fa-youtube-play"></i></a> <a href="#"><i
				class="fa fa-instagram"></i></a> <a href="#"><i
				class="fa fa-pinterest-p"></i></a>
		</div>
	</div>
	<!-- Offcanvas Menu Wrapper End -->

	<!-- Header Section Begin -->
	<header class="header-section">
		<span class="btn-logar">
			<a href="sistema/index.jsp" title="Login administrativo" target="_blank" class="text-secondary d-none d-md-block"><i class="fa fa-unlock"></a></i>
		</span>
		<span class="btn-logar-mobile">
			<a href="sistema/index.jsp" title="Login administrativo" target="_blank" class="text-secondary d-block d-sm-none"><i class="fa fa-unlock"></a></i>
		</span>
		<div class="hs-top">
			<div class="container">
				<div class="row">
					<div class="col-lg-2">
						<div class="logo">
							<a href="./index.jsp"><img src="img/logo.png" alt=""></a>
						</div>
					</div>
					<div class="col-lg-10">
						<div class="ht-widget">
							<ul>
								<li><i class="icon_mail_alt"></i> <%=email%></li>
								<li><i class="fa fa-whatsapp"></i> 
									<a class="text-dark"
										target="_blank" 
										title="Clique aqui pra iniciar uma conversa"
										href="https://api.whatsapp.com/send?1=pt_BR&phone=<%=whatsappLink%>">
										<%=whatsapp%>
									</a>
									<span><%=fixo%></span>
								</li>
							</ul>
							<a href="imoveis.jsp" class="hw-btn">Ver im�veis</a>
						</div>
					</div>
				</div>
				<div class="canvas-open">
					<span class="icon_menu"></span>
				</div>
			</div>
		</div>
		<div class="hs-nav">
			<div class="container">
				<div class="row">
					<div class="col-lg-9">
						<nav class="nav-menu">
							<ul>
								<li class="active"><a href="./index.jsp">Home</a></li>
								<li><a href="imoveis.jsp">Im�veis</a></li>
								<li><a href="corretores.jsp">Corretores</a></li>
								<li><a href="sobre.jsp">Sobre</a></li>
								<li><a href="contatos.jsp">Contatos</a></li>
							</ul>
						</nav>
					</div>
					<div class="col-lg-3">
						<div class="hn-social">
							<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
								class="fa fa-twitter"></i></a> <a href="#"><i
								class="fa fa-youtube-play"></i></a> <a href="#"><i
								class="fa fa-instagram"></i></a> <a href="#"><i
								class="fa fa-pinterest-p"></i></a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>
	<!-- Header End -->