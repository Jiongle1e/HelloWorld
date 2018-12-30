<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<script type="text/javascript">
	function register() {
		var userName = document.getElementById("userName").value;
		var password = document.getElementById("password").value;
		if (userName == null || userName == "" || password == null
				|| password == "") {
			document.getElementById("registerError").innerHTML = "UserName or password cannot be empty!";
		} else {
			document.getElementById('registerForm').submit();
		}

	}
</script>


<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>REGISTER</title>
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

#btn_register {
	right: 170px;
}
</style>

<body background="image/bg.png">
	<div align="center" class="box">
		<H3>REGISTER</H3>
		<form id="registerForm" method="post" action="addUser">
			UserName:<input type="text" id="userName" name="userName" />
			<p />
			Password:<input type="password" id="password" name="password" />
			<p />
			<font id="registerError" color="red">${error}</font>
			<p />
		</form>

		<a class="btn_style" id="btn_register" href="javascript:register()">Register</a>
	</div>
</body>
</html>