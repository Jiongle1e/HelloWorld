<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>HOME</title>
</head>
<body>
	<div align="center">
		<h2>USER LIST</h2>
		<table border="1">
			<tr>
				<th>UserId</th>
				<th>UserName</th>
				<th>Password</th>
			</tr>
			<c:forEach items="${userList}" var="item">
				<tr>
					<td>${item.userId}</td>
					<td>${item.userName}</td>
					<td>${item.password}</td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>