<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style>
</style>
<title>Muambyte</title>
<!-- bootstrap -->
<link rel="stylesheet" href="<c:url value='/assets/css/bootstrap.min.css'/>">
<link rel="stylesheet" href="<c:url value='/assets/css/bootstrap-theme.min.css'/>">
<link rel="stylesheet" href="<c:url value='/assets/css/font-awesome.min.css'/>">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/simple-line-icons/2.4.1/css/simple-line-icons.css"/>

<!-- style -->
 <link rel="stylesheet" href="<c:url value='/assets/sass_compiled/main.css'/>">
 <link rel="stylesheet" href="<c:url value='/assets/css/index.css'/>">
 
</head>
<body>
	<div class="grid-home">
		<header class="header-home">
			<nav class="navbar-default">
				<div class="items-left">
					<div class="item logo"></div>
					<div class="item contato"><a href="#">CONTATO</a></div>
				</div>
				<div class="items-middle">
					<div class="nav-search">SEARCH</div>
				</div>
				<div class="items-right">
					<div class="item register"><a href="/account/register">REGISTRAR</a></div>
					<div class="item shopping-cart"><a href="#"><i class="icon-basket"></i></a></div>
				</div>
			</nav>
		</header>
		<main>
		<div></div>


	<div class="header">
		<div class="title">
			Produtos
		</div>
	</div>
    <div class="products-admin">
		<div class="search">
			<i class="icon-magnifier"></i>
			<input placeholder="Digite o nome da categoria aqui..."></input>
			<a class="btn-search">Buscar</a>
		</div>
		
		<div class="products-wrapper">
			<c:forEach items='${paginatedList.currentList}' var='object'>
				<div class="product">
					<div class="image" style="background: url(${object.image}) center center no-repeat; background-size: cover; background-size: 100% 100%;"></div>
					<div class="name"><span>${object.name}</span></div>
					<div class="description"><span>descrição: </span>${object.description}</div>
					<div class="price"><span>preço: </span>${object.price}</div>
					<div class="price-discount"><span>desconto: </span>${object.discount_price}</div>
					<div class="prateleira"><span>categoria: </span>${object.category.name}</div>
				</div>
			</c:forEach>
		</div>
    </div>


		</main>
		<footer></footer>
	</div>

</body>
</html>