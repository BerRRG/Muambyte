<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page pageEncoding="UTF-8" %>



<div class="form-group">
    <label for="name" >Nome do produto</label>
    <form:input path='name' type="text" class="form-control" id="name" aria-describedby="nameProdHelp" placeholder="Digite o nome do produto, Ex: iPhone 6s PLUS..." />
	<form:errors path='name' />
    <small id="nameProdHelp" class="form-text text-muted">Ex: iPhone 6s PLUS.</small>
</div>

<div class="form-group">
	<label for="description" >Descrição</label>
	<form:input path='description' type="text" class="form-control" id="description" aria-describedby="descriptionHelp" placeholder="Digite a descrição do produto, Ex: Rosa, 128GB, ..." />
	<form:errors path='description' />
	<small id="descriptionHelp" class="form-text text-muted">Ex: Rosa, 128GB, ...</small>
</div>

<div class="form-group">
	<label for="description" >Estoque</label>
	<form:input path='stock' type="text" class="form-control" id="description" aria-describedby="stockHelp" placeholder="Digite valor em estoque" />
	<form:errors path='stock' />
	<small id="stocknHelp" class="form-text text-muted">Ex:123.</small>
</div>

<div class="form-group">
	<label for="price" >Preço de venda</label>
	<form:input path='price' type="number" class="form-control" id="price" aria-describedby="priceHelp" placeholder="Digite o preço de venda do produto, Ex: 1600..." />
	<form:errors path='price' />
	<small id="priceHelp" class="form-text text-muted">Ex: 1600</small>
</div>

<div class="form-group">
	<label for="discount_price" >Preço com desconto</label>
	<form:input path='discount_price' type="number" class="form-control" id="discount_price" aria-describedby="discount_priceHelp" placeholder="Digite o preço do produto com desconto, Ex: 1500..." />
	<form:errors path='discount_price' />
	<small id="discount_priceHelp" class="form-text text-muted">Ex: 1500</small>
</div>

<div class="form-group">
	<label for="category" >Categoria</label>
	<form:select path='category.id' items='${categoryList}' itemValue='id'
		itemLabel='name'>
	</form:select>
	<form:errors path='category.id' />
</div>

<div class="form-group">
	<label for="featured" >Destaque</label>
	<form:checkbox path="featured" value="${featured}" />
	<form:errors path='featured' />
</div>

<div class="form-group">
	<label for="image" >Endereço da imagem do produto</label>
	<form:input path='image' type="text" class="form-control" id="image" aria-describedby="imageHelp" placeholder="Digite o endereço da imagem do produto, Ex: http://google.com/...jpg..." />
	<form:errors path='image' />
	<small id="imageHelp" class="form-text text-muted">Ex: http://google.com/...jpg</small>
</div>

<div class="form-group">
	<label for="disable" >Desabilitar produto do site?</label>
	<form:checkbox path="disable" value="${disable}" />
	<form:errors path='disable' />
</div>