<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
  	        <div class="form-group">
          <label for="name">Nome</label>
          <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-unchecked"></i></span><form:input path='name' type='text'/>
<form:errors path='name'/>

          </div>
        </div>
        <div class="form-group">
          <label for="description">Descrição</label>
          <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-unchecked"></i></span><form:input path='description' type='text'/>
<form:errors path='description'/>

          </div>
        </div>
        <div class="form-group">
          <label for="price">Preço</label>
          <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-unchecked"></i></span><form:input path='price' type='text'/>
<form:errors path='price'/>

          </div>
        </div>
        <div class="form-group">
          <label for="category.id">Categoria</label>
          <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-unchecked"></i></span><form:select path='category.id' items='${categoryList}' itemValue='id' itemLabel='name'>
</form:select>
<form:errors path='category.id'/>

          </div>
        </div>


        <div class="form-group">
          <label for="featured">Destaque</label>
          <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-unchecked"></i></span>
            <form:checkbox path="featured" value="${featured}" />
			<form:errors path='featured'/>
          </div>
        </div>
        <div class="form-group">
          <label for="price">Preço Desconto</label>
          <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-unchecked"></i></span><form:input path='discount_price' type='text'/>
<form:errors path='discount_price'/>
          </div>
        </div>
        <div class="form-group">
          <label for="price">Url da imagem</label>
          <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-unchecked"></i></span><form:input path='image' type='text'/>
<form:errors path='image'/>
          </div>
        </div>