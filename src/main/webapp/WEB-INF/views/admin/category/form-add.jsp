<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib tagdir="/WEB-INF/tags/template" prefix="template" %>
<template:admin>
  <div>
    <div class ="container min-container">      
    <h2 class="basic-title">Adicionar categoria</h2>
      <form:form role="form" cssClass="form-default" commandName="category" servletRelativeAction="/admin/category" method="POST">
      	<%@include file="form-inputs.jsp" %>
        <button type="submit" class="btn btn-primary">Adicionar categoria</button>

      </form:form>	
    </div>
  </div>
</template:admin>
