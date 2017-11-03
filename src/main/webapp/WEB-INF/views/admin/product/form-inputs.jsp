<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page pageEncoding="UTF-8" %>

<div class="form-field">
	<span for="name" class="input-title">Nome</span>
	<div class="input-field">
		<div class="icon"><i class="icon-trash"></i></div>
		<form:input path='name' class="input" type='text' placeholder="Ex: iPhone 6s Plus" />
		<form:errors path='name' />
	</div>
</div>
<div class="form-field">
	<span for="description" class="input-title">Descrição</span>
	<div class="input-field">
		<div class="icon"><i class="icon-trash"></i></div>
		<form:input path='description' type="text" class="input" placeholder="Ex: Rosa, 128GB, ..."/>
		<form:errors path='description' />
	</div>
</div>
<div class="form-field">
	<span for="price" class="input-title">Preço de venda</span>
	<div class="input-field">
		<div class="icon"><i class="icon-trash"></i></div>
		<form:input path='price' type="number" class="input" placeholder="Ex: 1600"/>
		<form:errors path='price' />
	</div>
</div>
<div class="form-field">
	<span for="discount_price" class="input-title">Preço com desconto</span>
	<div class="input-field">
		<div class="icon"><i class="icon-trash"></i></div>
		<form:input path='discount_price' type="number" class="input" placeholder="Ex: 1550"/>
		<form:errors path='discount_price' />
	</div>
</div>
<div class="form-field">
	<span for="category" class="input-title">Categoria</span>
	<div class="input-group">
		<form:select path='category.id' items='${categoryList}' itemValue='id'
			itemLabel='name'>
		</form:select>
		<form:errors path='category.id' />
	</div>
</div>
<div class="form-field">
	<span for="featured" class="input-title">Destaque</span>
	<div class="input-group">
		<form:checkbox path="featured" value="${featured}" />
		<form:errors path='featured' />
	</div>
</div>

<div class="form-field">
	<span for="image" class="input-title">Endereço da imagem do produto</span>
	<div class="input-field">
		<div class="icon"><i class="icon-trash"></i></div>
		<form:input path='image' type="text" class="input" placeholder="Ex: http://google.com/...jpg"/>
		<form:errors path='image' />
	</div>
</div>

<div class="form-field">
	<span for="disable" class="input-title">Desabilitar do site</span>
	<div class="input-group">
		<form:checkbox path="featured" value="${featured}" />
		<form:errors path='featured' />
	</div>
</div>