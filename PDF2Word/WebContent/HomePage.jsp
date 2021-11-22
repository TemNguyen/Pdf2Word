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


<div class="container">
	<div class="header">
		<i class="far fa-file-pdf"></i><h1>Chuyển PDF sang Word</h1>
		<h2>Chuyển file PDF sang Word một cách vi diệu</h2>
	</div>
	<%
		user user = (user)session.getAttribute("user");
	%>
	<form action="UploadFileServlet" method="post" enctype="multipart/form-data">
		<input type="hidden" name="username" value=<%=user.getUsername() %>>
		<div class="main">
			<div class="submain">
				<div class="button">
					<i class="far fa-copy"></i>
					<input type="file" id="file" name="files_upload" accept="application/pdf" multiple>
					<label for="file">CHỌN CÁC TỆP</label>
				</div>
			</div>
		</div>
		<input type="submit" value="Submit">
	</form>
</div>

</body>
</html>
