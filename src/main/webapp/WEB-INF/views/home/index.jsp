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

.sistem-root {
	height: 100vh;
	min-height: 680px;
	display: grid;
	grid-template-columns: 100%;
	grid-template-rows: 1fr 1fr 0.5fr 4fr 1fr 1fr;
}

.nav-header{
	background-color: #2980B9;
	color: white;
}

.nav-bar{
	background-color: #1A5276;
	color: white;
}

.links {
	background-color: #A9CCE3;
}

.container {
	background-color: #ECF0F1;
}

.aside {
	background-color: #5D6D7E;
	color: white;
}

.footer { 
	background-color: #212F3C;
	color: white;
}

</style>
<title>Muambyte</title>
</head>
<body>
	
	<div class="sistem-root">
		<div class="nav-header"><h1>nav-header</h1></div>
		<div class="nav-bar"><h1>nav-bar</h1></div>
		<div class="links"><h1>links</h1></div>
		<div class="container"><h1>container</h1></div>
		<div class="aside"><h1>aside</h1></div>
		<div class="footer"><h1>footer</h1></div>
	</div>
</body>
</html>