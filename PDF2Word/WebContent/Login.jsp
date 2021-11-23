<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Đăng nhập</title>
<link href="./css/LoginStyle.css" rel="stylesheet" type="text/css">
</head>
<body>

<%
	if(session.getAttribute("message") != null){
		%>
			<script>alert("<%=session.getAttribute("message")%>")</script>
		<%
		session.setAttribute("message", null);
	}
%>

<form action="CheckLoginServlet" method="post" class="form">
	<h1>Đăng nhập</h1>
	<div class="txt_contain">
		<div class="txt_field">
			<input type="text" name="username">
			<span></span>
			<label>Tên tài khoản</label>
		</div>
		<div class="txt_field">
			<input type="password" name="password">
			<span></span>
			<label>Mật khẩu</label>
		</div>
			<input type="submit" name="submit" value="Đăng nhập" >
	</div>
</form>
</body>
</html>
