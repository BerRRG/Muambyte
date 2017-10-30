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
			<a href="<c:url value='/admin/product/form'/>" class="btn btn-success"><span class="glyphicon glyphicon-plus-sign"></span> Adicionar novo produto</a>
		</div>
	</div>
    <div class="products-admin">
		<div class="search">
			<i class="icon-magnifier"></i>
			<input placeholder="Digite o nome do produto aqui..."></input>
			<a class="btn-search">Buscar</a>
		</div>
		
		<div class="products-wrapper">
          <table class="table table-condensed table-bordered table-striped table-hover">
          		  <thead>
	                  <tr>
	                  	<td>id</td>
		                  	<td>Nome</td>
		                  	<td>Descrição</td>
		                  	<td>Preço</td>
		                  	<td>Destaque</td>
		                  	<td>Preço de desconto</td>
		                  	<td>Endereço da imagem</td>
						<td>actions</td>
	                  </tr>
                  </thead>
                  <tbody>
                  <c:forEach items='${paginatedList.currentList}' var='object'>         		
	                  <tr>
						<td><a href="<c:url value='/admin/product'/>/${object.id}">${object.id}</a></td>
		                  	<td>${object.name}</td>
		                  	<td>${object.description}</td>
		                  	<td>${object.price}</td>
		                  	<td>${object.featured}</td>
		                  	<td>${object.discount_price}</td>
							<td>${object.image}</td>
						<td><a class="btn btn-primary" href="<c:url value='/admin/product'/>/${object.id}"><i class="icon-pencil"></a></td>
	                    <td><a class="btn btn-danger" href="<c:url value='/admin/product/remove'/>/${object.id}"><i class="icon-trash"></i></a></td>
					  </tr>
                  </c:forEach>
                  </tbody>
          </table>
		  <template:paginationComponent paginatedList="${paginatedList}" page="${param.page}" action="/admin/product"/>
          
		</div>
		<div class="search-right"></div>
    </div>
</jsp:body>
</template:admin>
