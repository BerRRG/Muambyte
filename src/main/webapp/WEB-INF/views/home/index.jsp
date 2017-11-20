<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%-- imports function tags from JSTL, prefix "fn"--%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style>
</style>
<title>Muambyte</title>
<!-- bootstrap -->
<link rel="stylesheet"
	href="<c:url value='/assets/css/bootstrap.min.css'/>">
<link rel="stylesheet"
	href="<c:url value='/assets/css/bootstrap-theme.min.css'/>">
<link rel="stylesheet"
	href="<c:url value='/assets/css/font-awesome.min.css'/>">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/simple-line-icons/2.4.1/css/simple-line-icons.css" />

<!-- style -->
<link rel="stylesheet"
	href="<c:url value='/assets/sass_compiled/main.css'/>">
<link rel="stylesheet" href="<c:url value='/assets/css/index.css'/>">

</head>

<body>
	<div class="grid-home">
		<header class="header-home"> 
			<nav class="navbar-default">
				<div class="items-left">
					<div class="item logo"></div>
					<div class="item contato">
						<a href="#">CONTATO</a>
					</div>
				</div>
				<div class="items-middle">
					<div class="nav-search">SEARCH</div>
				</div>
				<div class="items-right">
					<div class="item register">
						<a href="/registration">REGISTRAR</a>
					</div>
					<div class="item shopping-cart">
						<a href="#"> <i class="icon-basket"></i>
						</a>
					</div>
				</div>
			</nav> 
		</header>
		
		<main>
			<div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
				<div class="carousel-inner">
					<div class="carousel-item active">
						<img class="d-block w-100" src="https://media.licdn.com/mpr/mpr/AAEAAQAAAAAAAAkPAAAAJGVlNTA0NGY2LWY1MGItNDFmYy04NDcwLTg5NDhkNzg0MDhlYw.jpg" alt="First slide">
					</div>
					<div class="carousel-item">
						<img class="d-block w-100" src="https://media.licdn.com/mpr/mpr/AAEAAQAAAAAAAAkPAAAAJGVlNTA0NGY2LWY1MGItNDFmYy04NDcwLTg5NDhkNzg0MDhlYw.jpg" alt="Second slide">
					</div>
					<div class="carousel-item">
						<img class="d-block w-100" src="https://media.licdn.com/mpr/mpr/AAEAAQAAAAAAAAkPAAAAJGVlNTA0NGY2LWY1MGItNDFmYy04NDcwLTg5NDhkNzg0MDhlYw.jpg" alt="Third slide">
					</div>
				</div>
				<a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev"> 
					<span class="carousel-control-prev-icon" aria-hidden="true"></span> 
					<span class="sr-only">Previous</span>
				</a> 
				<a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next"> 
					<span class="carousel-control-next-icon" aria-hidden="true"></span> 
					<span class="sr-only">Next</span>
				</a>
			</div>
			<div class="carrousel-products">
				<h1>Produtos em destaque</h1>
				<div class="carrousel-wrapper">
					<c:forEach items='${paginatedList.currentList}' var='object'>
						<div class="product">
							<div class="image" style="background: url(${object.image}) center center no-repeat; background-size: cover; background-size: 100% 100%;"></div>
							<div class="name">
								<span>${object.name}</span>
							</div>
							<c:set var="shortDesc" value="${fn:substring(object.description, 0, 60)}" />
							<c:choose>
								<c:when test="${fn:length(shortDesc)>=60}">
									<div class="description">${shortDesc}...</div>
								</c:when>
								<c:when test="${fn:length(shortDesc)<=60}">
									<div class="description">${shortDesc}</div>
								</c:when>
							</c:choose>
							<c:choose>
								<c:when test="${object.discount_price==null}">
									<div class="price">
										<span>preço: </span>${object.price}</div>
								</c:when>
								<c:when test="${object.discount_price!=null}">
									<div class="price">
										<span>de: </span><strike>${object.price}</strike> <span>por:
										</span>${object.discount_price}</div>
								</c:when>
							</c:choose>
							<div class="actions">
								<a class="btn btn-primary" href="/buyProduct?code=${object.id}">Adicionar ao carrinho</a>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
			<div class="products-home">
				<h1>Todos os produtos</h1>
				<div class="products-wrapper">
					<c:forEach items='${paginatedList.currentList}' var='object'>
						<div class="product">
							<div class="image" style="background: url(${object.image}) center center no-repeat; background-size: cover; background-size: 100% 100%;"></div>
							<div class="name">
								<span>${object.name}</span>
							</div>
							<c:set var="shortDesc" value="${fn:substring(object.description, 0, 60)}" />
							<c:choose>
								<c:when test="${fn:length(shortDesc)>=60}">
									<div class="description">${shortDesc}...</div>
								</c:when>
								<c:when test="${fn:length(shortDesc)<=60}">
									<div class="description">${shortDesc}</div>
								</c:when>
							</c:choose>
							<c:choose>
								<c:when test="${object.discount_price==null}">
									<div class="price">
										<span>preço: </span>${object.price}</div>
								</c:when>
								<c:when test="${object.discount_price!=null}">
									<div class="price">
										<span>de: </span><strike>${object.price}</strike> <span>por:
										</span>${object.discount_price}</div>
								</c:when>
							</c:choose>
							<div class="actions">
								<a class="btn btn-primary" href="/buyProduct?code=${object.id}">Adicionar ao carrinho</a>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</main>
		<footer class="footer"></footer>
	</div>

</body>

<script src="<c:url value='/assets/js/jquery-2.1.4.min.js'/>"></script>
<script src="<c:url value='/assets/js/bootstrap.min.js'/>"></script>

</html>