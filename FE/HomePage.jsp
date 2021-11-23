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

<header>
	<nav>
		<ul class="nav_link">
			<li><a href="UserProfile.jsp">Trang chủ</a></li>
			<li><a href="UserProfile.jsp">Tìm kiếm</a></li>
			<li><a href="UserProfile.jsp">Hỗ trợ</a></li>
			<li><a href="UserProfile.jsp">Hồ sơ</a></li>
		</ul>
	</nav>
</header>

<div class="container">
	<div class="header">
		<i class="far fa-file-pdf"></i><h1>Chuyển PDF sang Word</h1>
		<h2>Chuyển file PDF sang Word một cách vi diệu</h2>
	</div>
	<div class="main">
		<div class="submain">
			<form action="UploadfileServlet" class="button" method="POST" enctype="multipart/form-data">
				<i class="far fa-copy"></i>
				<input type="file" id="file" accept="application/pdf">
				<label for="file">CHỌN CÁC TỆP</label>
				<input class="submit" type="submit" value="Send">
			</form>
		</div>
	</div>
</div>

</body>
</html>
