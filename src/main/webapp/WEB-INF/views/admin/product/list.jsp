<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib tagdir="/WEB-INF/tags/template" prefix="template" %>
<%@page pageEncoding="UTF-8" %>
<template:admin>
<jsp:attribute name="extraStyles">
<link rel="stylesheet" href="<c:url value='/assets/css/pagination/jqpagination.css'/>" />
</jsp:attribute>
<jsp:attribute name="extraScripts">
<script src="<c:url value='/assets/js/jquery.jqpagination.js'/>"></script>
</jsp:attribute>
<jsp:body>
	<div class="header">
		<div class="title">
			Produtos
		</div>
		<div class="action">
			<a href="<c:url value='/admin/product/form'/>" class="btn btn-primary"><i class="icon-plus"></i> &nbsp;&nbsp;Adicionar novo produto</a>
		</div>
	</div>
    <div class="products-admin">
		<div class="search">
			<i class="icon-magnifier"></i>
			<input placeholder="Digite o nome do produto aqui..."></input>
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
					<div class="prateleira"><span>categoria: </span>${object.category}</div>
					<div class="actions">
						<a class="btn btn-primary" href="<c:url value='/admin/product'/>/${object.id}"><i class="icon-pencil"></i></a>
						<a class="${object.disable ? 'btn btn-success' : 'btn btn-danger'}" href="<c:url value='/admin/product/disable'/>/${object.id}"><i class="${object.disable ? 'icon-power' : 'icon-ban'}"></i></a>
						<a class="btn btn-danger remove" href="<c:url value='/admin/product/remove'/>/${object.id}"><i class="icon-trash"></i></a>
					</div>
				</div>
			</c:forEach>
		</div>
    </div>
</jsp:body>
</template:admin>
