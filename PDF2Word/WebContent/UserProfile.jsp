<%@page import="Model.Bean.uploadfile"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.Bean.user"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Hồ sơ</title>

<link href="./css/UserProfileStyle.css" rel="stylesheet" type="text/css">
</head>
<body>

<%
	user user = (user)session.getAttribute("user");
	ArrayList<uploadfile> files = (ArrayList<uploadfile>)request.getAttribute("Files");
%>

<div class="Wrapper">
	<div class="left">
		<img src="default-profile-icon-24.jpg" alt="user" width="100">
		<h4><%=user.getFullname() %></h4>
	</div>
	<div class="right">
		<div class="info">
			<h3>Thông tin cá nhân</h3>
			<div class="info_data">
				<div class="data">
					<h4>Email</h4>
					<p><%=user.getEmail() %></p>
				</div>
				<div class="data">
					<h4>Điện thoại</h4>
					<p>0001-234-999842</p>
				</div>
			</div>
		</div>
		<div class="projects">
			<h3>Projects</h3>
			<div class="projects_data">
				<%
				for(int i = 0; i < files.size(); i++){
					
				%>
				<div class="data">
					<h4>File name</h4>
					<p><%=files.get(i).getFname() %></p>
				</div>
				<div class="data">
					<h4>Download</h4>
					<a href="DownloadFileServlet?fid=<%=files.get(i).getFid() %>">Download</a>
				</div>
				<br>
				<%
				}
				%>
			</div>
		</div>	
	</div>
</div>

</body>
</html>
