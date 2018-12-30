<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<script type="text/javascript">
	function reset() {
		document.getElementById("userName").value = "";
		document.getElementById("password").value = "";
		document.getElementById("error").innerHTML = "";

	}
	function login() {
		document.getElementById('form').submit();
	}
	function register() {
		window.location.href = "register";
	}
</script>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>

<style type="text/css">
.box {
	width: 400px;
	height: 200px;
	margin: 200px auto;
	display: block;
	position: relative;
	display: block;
}

.btn_style {
	width: 80px;
	height: 30px;
	display: block;
	position: absolute;
	text-decoration: none;
	text-align: center;
	line-height: 30px;
	color: #fff;
	background-color: #058;
}

#btn_reset:HOVER {
	background-color: #047;
}

#btn_login:hover {
	background-color: #047;
}

#btn_register:hover {
	background-color: #047;
}

#btn_reset {
	right: 170px;
}

#btn_login {
	margin-left: 50px;
}

#btn_register {
	margin-left: 250px;
}
</style>

<body background="image/bg.png">
	<div align="center" class="box">
		<H3>LOGIN IN</H3>
		<form id="form" method="post" action="login">
			UserName : <input type="text" id="userName" name="userName"
				value="${userName}">
			<p />
			Password : <input type="password" id="password" name="password"
				value="${password}">
			<p />
			<font id="error" color="red">${error}</font>
			<p />
		</form>
		<a class="btn_style" id="btn_login" href="javascript:login()">Login</a>
		<a class="btn_style" id="btn_reset" href="javascript:reset()">Reset</a>
		<a class="btn_style" id="btn_register" href="javascript:register()">Register</a>



	</div>
</body>
</html>