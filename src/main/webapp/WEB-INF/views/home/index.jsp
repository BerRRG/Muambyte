<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style>
*{
	margin: 0px;
	padding: 0px;
	box-sizing: border-box;
}
.grid-system{
	width: 100vw;
	height: 100vh;
	grid-template-columns: 1fr;
	grid-template-rows: 20vh 65vh 15vh;
}
.header {
	background-color: rgba(0,0,0, 0.8);
}
main {
	background-color: rgba(0,0,0, 0.3);
}
footer {
	background-color: rgba(0,0,0, 0.8);
}
</style>
<title>Muambyte</title>
</head>
<body>
	<div class="grid-system">
		<header class="header">
			<div class="navbar-principal">
				<div class="logo">logo</div>
				<div class="contact">contato</div>
				<div class="search">search</div>
				<div class="register">registrar</div>
				<div class="login">logar</div>
				<div class="cart">carrinho</div>
			</div>
			<div class="navbar-secundaria">
				<div class="dropdown">
					<a class="link-menu">item</a>
					<div class="dropdown-content">
						<span>sub item</span>
					</div>
				</div>
	
			</div>
		</header>
		<main>
		<div></div>

		</main>
		<footer></footer>
	</div>

</body>
</html>