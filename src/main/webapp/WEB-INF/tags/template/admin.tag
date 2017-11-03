<%@attribute name="extraScripts" fragment="true"%>
<%@attribute name="extraStyles" fragment="true"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="pt-br">
<head>
  <meta charset="UTF-8">
  <title>Painel administrativo</title>

  <!-- bootstrap -->
  <link rel="stylesheet" href="<c:url value='/assets/css/bootstrap.min.css'/>">
  <link rel="stylesheet" href="<c:url value='/assets/css/bootstrap-theme.min.css'/>">
  <link rel="stylesheet" href="<c:url value='/assets/css/font-awesome.min.css'/>">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/simple-line-icons/2.4.1/css/simple-line-icons.css"/>
  
  <!-- style -->
   <link rel="stylesheet" href="<c:url value='/assets/sass_compiled/main.css'/>">
   <link rel="stylesheet" href="<c:url value='/assets/css/index.css'/>">
   <jsp:invoke fragment="extraStyles"/>
</head>

<body>

<div class="grid-system">
	<div class="sidebar">
		<div class="hamburguer-menu">
			<div class="menu-header">
				<div class="title">Muambyte</div>
				<div class="subtitle">Dashboard administrativo</div>
			</div>
			<div class="menu-action "><button><i class="icon-menu icon-list"></i></button></div>
		</div>
		
		<div class="social">
			<div class="user-image"></div>
			<div class="username">Fulano de Tal</i></div>
		</div>
		
		<div class="nav-left">
			<a href="<c:url value='/admin/dashboard'/>" class="item-nav">
				<span class="item-rectangle"></span>
				<span class="item-icon icon-speedometer"></span>
				<span class="item-name">Dashboard</span>
			</a>

			<a href="<c:url value='/admin/product'/>" class="item-nav">
				<span class="item-rectangle"></span>
				<span class="item-icon icon-social-dropbox"></span>
				<span class="item-name">Produtos</span>
			</a>

			<a href="<c:url value='/admin/category'/>" class="item-nav">
				<span class="item-rectangle"></span>
				<span class="item-icon icon-pin"></span>
				<span class="item-name">Categorias</span>
			</a>

			<a href="<c:url value='/admin/client'/>" class="item-nav">
				<span class="item-rectangle"></span>
				<span class="item-icon icon-people"></span>
				<span class="item-name">Clientes</span>
			</a>

			<a href="<c:url value='/admin/order'/>" class="item-nav">
				<span class="item-rectangle"></span>
				<span class="item-icon icon-doc"></span>
				<span class="item-name">Pedidos</span>
			</a>

			<a href="<c:url value='/admin/carts-made'/>" class="item-nav">
				<span class="item-rectangle"></span>
				<span class="item-icon icon-basket-loaded"></span>
				<span class="item-name">Carrinhos feitos</span>
			</a>
		</div>

		<div class="sidebar-footer">
			<span class="copyright">Copyright Oficial Trive</span>
			<span class="version">Version 1.0.0</span>
		</div>
	
	</div>
	<div class="system-container">
		<jsp:doBody />
	</div>
</div>

<script src="<c:url value='/assets/js/jquery-2.1.4.min.js'/>"></script>
<script src="<c:url value='/assets/js/bootstrap.min.js'/>"></script>
<jsp:invoke fragment="extraScripts"/>
</body>
</html>