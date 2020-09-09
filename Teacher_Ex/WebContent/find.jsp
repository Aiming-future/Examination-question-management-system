<%@page import="dao.Teacher"%>
<%@page import="manager.ManagerDaoimpl"%>
<%@page import="manager.ManagerDao"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/find.css">
<meta charset="UTF-8">
<title>查找结果</title>
</head>
<body>
<%Teacher t = (Teacher)request.getAttribute("tea");%>
<table class="right" id="pro" border="1px"  > 
					<tr>
						<th>学工号</th>
						<th>姓名</th>
						<th>专业</th>
						<th>邮箱</th>
						<th>密码</th>
					</tr>
<tr><td><%=t.getNo()%></td>
<td><%=t.getName() %></td>
<td><%=t.getDiscipline() %></td>
<td><%=t.getMail() %></td>
<td><%=t.getPwd() %></td></tr></table>
<a href="stu.jsp" font-size:20px>返回</a>
</body>
</html>