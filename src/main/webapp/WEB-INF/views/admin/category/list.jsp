<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib tagdir="/WEB-INF/tags/template" prefix="template"%>
<%@page pageEncoding="UTF-8" %>
<template:admin>
	<jsp:attribute name="extraStyles">
</jsp:attribute>
	<jsp:attribute name="extraScripts">
</jsp:attribute>
	<jsp:body>
    <div class="header">
        <div class="title">
          Categorias
        </div>
        <div class="action">
          <a href="<c:url value='/admin/category/form'/>" class="btn btn-primary"><i class="icon-plus"></i> &nbsp;&nbsp;Adicionar nova categoria</a>
        </div>
    </div>
    <div class="category-admin">
			<div class="search">
				<i class="icon-magnifier"></i>
				<input placeholder="Digite o nome do produto aqui..."></input>
				<a class="btn-search">Buscar</a>
			</div>
		<div class="categories">
			<table class="table table-hover">
				  <thead>
					  <tr>
						<th>ID</th>
						<th>Nome da categoria</th>
						<th>Descrição</th>
						<th>Ações</th>
					  </tr>
					</thead>
					<tbody>
					<c:forEach items='${paginatedList.currentList}' var='object'>         		
					  <tr>
						<th scope="row"><a href="<c:url value='/admin/category'/>/${object.id}" class="id">${object.id}</a></th>
						<td class="name">${object.name}</td>
						<td class="description">${object.description}</td>
						<td>
							<a class="btn btn-primary btn-category" href="<c:url value='/admin/category'/>/${object.id}"><i class="icon-pencil"></i></a>
							<a class="btn btn-danger btn-category" href="<c:url value='/admin/category/remove'/>/${object.id}"><i class="icon-trash"></i></a>
						</td>
					  </tr>
					</c:forEach>
					</tbody>
			</table>
		</div>
    </div>
</jsp:body>
</template:admin>
