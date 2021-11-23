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
	if(session.getAttribute("session") != null){
		%>
			<script>alert("<%=session.getAttribute("session")%>")</script>
		<%
		session.setAttribute("message", null);
	}
%>

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
			<div>
				
				<table width="100%" style="text-align:center">
					<tr>
						<th>ID</th>
						<th>File name</th>
						<th>Dowload</th>
					</tr>
				<%
					for(int i = 0; i < files.size(); i++){
					
				%>
					<tr>
						<td><%=i %></td>
						<td><%=files.get(i).getFname() %></td>
						<td><a href="DownloadFileServlet?fid=<%=files.get(i).getFid() %>">Download</a></td>
					</tr>
				<%
				}
				%>
				</table>

			</div>
		</div>	
	</div>
</div>

</body>
</html>
