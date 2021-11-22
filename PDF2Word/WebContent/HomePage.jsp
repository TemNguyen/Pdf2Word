<%@page import="Model.Bean.user"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home page</title>
<link href="./css/HomePageStyle.css" rel="stylesheet" type="text/css">
<script src="https://kit.fontawesome.com/410b195647.js" crossorigin="anonymous"></script>
</head>
<body>
	<%
		user user = (user)session.getAttribute("user");
	%>
<header>
	<nav>
		<ul class="nav_link">
			<li><a href="HomePage.jsp">Trang chủ</a></li>
			<li><a href="UserProfileServlet?uid=<%= user.getUid() %>">Hồ sơ</a></li>
			<li><a href="LogoutServlet">Đăng xuất</a></li>
		</ul>
	</nav>
</header>

<div class="container">
	<div class="header">
		<i class="far fa-file-pdf"></i><h1>Chuyển PDF sang Word</h1>
		<h2>Chuyển file PDF sang Word một cách vi diệu</h2>
	</div>

	<form action="UploadFileServlet" class="button" method="post" enctype="multipart/form-data">
		<div class="main">
			<div class="submain">
				
					<input type="hidden" name="username" value=<%=user.getUsername() %>>
					<i class="far fa-copy"></i>
					<input type="file" id="file" name="files_upload" accept="application/pdf" multiple>
					<label for="file">CHỌN CÁC TỆP</label>
					
			</div>
		</div>
		<input type="submit" value="Submit">
	</form>
</div>
</body>
</html>
