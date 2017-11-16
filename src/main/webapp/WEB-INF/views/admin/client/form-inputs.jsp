<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
  	        <div class="form-group">
          <label for="name">name</label>
          <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-unchecked"></i></span><form:input path='name' type='text'/>
<form:errors path='name'/>

          </div>
        </div>
        <div class="form-group">
          <label for="cpf">cpf</label>
          <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-unchecked"></i></span><form:input path='cpf' type='text'/>
<form:errors path='cpf'/>

          </div>
        </div>
        <div class="form-group">
          <label for="email">email</label>
          <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-unchecked"></i></span><form:input path='email' type='text'/>
<form:errors path='email'/>

          </div>
        </div>
        <div class="form-group">
          <label for="password">password</label>
          <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-unchecked"></i></span><form:input path='password' type='text'/>
<form:errors path='password'/>

          </div>
        </div>
        <div class="form-group">
          <label for="address">address</label>
          <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-unchecked"></i></span><form:input path='address' type='text'/>
<form:errors path='address'/>

          </div>
        </div>
