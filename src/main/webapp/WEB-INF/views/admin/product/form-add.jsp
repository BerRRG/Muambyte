<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib tagdir="/WEB-INF/tags/template" prefix="template" %>
<%@page pageEncoding="UTF-8" %>
<template:admin>
  <div>
    <div class ="container min-container">      
    <h2 class="basic-title">Adicionar produto</h2>
      <form:form role="form" cssClass="form-default" commandName="product" servletRelativeAction="/admin/product" method="POST">
      	<%@include file="form-inputs.jsp" %>
        <button type="submit" class="btn btn-primary">Adicionar produto</button>

      </form:form>	
    </div>
  </div>
</template:admin>
