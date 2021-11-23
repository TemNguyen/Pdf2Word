<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login page</title>
<link href="./css/LoginStyle.css" rel="stylesheet" type="text/css">
</head>
<body>
<div class="form">
<h1>Login</h1>
<form action="CheckLoginServlet" method="post" class="txt_contain">
	<div class="txt_field">
		<input type="text" name="username" placeholder="Tên đăng nhập">
	</div>
	<div class="txt_field">
		<input type="password" name="password" placeholder="Password">
	</div>
	<input type="submit" name="submit" value="Đăng nhập" >
</form>
</div>
</body>
</html>
