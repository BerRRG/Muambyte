<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page pageEncoding="UTF-8" %>

<div class="form-group">
    <label for="name" >Nome da categoria</label>
    <form:input path='name' type="text" class="form-control" id="name" aria-describedby="nameProdHelp" placeholder="Digite o nome da categoria, Ex: Celulares..." />
	  <form:errors path='name' />
    <small id="nameProdHelp" class="form-text text-muted">Ex: Celulares.</small>
</div>

<div class="form-group">
    <label for="description" >Descrição</label>
    <form:input path='description' type="text" class="form-control" id="name" aria-describedby="descriptionCatHelp" placeholder="Digite uma descrição para a categoria..." />
	  <form:errors path='description' />
    <small id="descriptionCatHelp" class="form-text text-muted">Ex: Todos os tipos de celulares.</small>
</div>
