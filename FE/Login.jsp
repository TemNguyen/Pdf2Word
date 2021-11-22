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
<form action="GotoMyHomeServlet" method="post" class="txt_contain">
	<div class="txt_field">
		<input type="text" name="username">
		<span></span>
		<label>User name</label>
	</div>
	<div class="txt_field">
		<input type="text" name="password">
		<span></span>
		<label>Pass word</label>
	</div>
	<input type="submit" name="submit" value="Login" >
</form>
</div>
</body>
</html>
