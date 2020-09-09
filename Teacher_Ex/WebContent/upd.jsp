<%@page import="dao.Teacher"%>
<%@page import="manager.ManagerDaoimpl"%>
<%@page import="manager.ManagerDao"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/upd.css">
<meta charset="UTF-8">
<title>修改信息</title>
</head>
<body>
<div id='upd' class="update">         <!-- 修改 -->
	<form action="UpdTeacherServlet" method="post">
	<%  
	String tno = request.getParameter("selected");
	ManagerDaoimpl mana = new ManagerDaoimpl();
	Teacher tea=mana.getTeaByNo(tno);%>
	<input type="hidden" name="no" value=<%=tea.getNo()%> >
	 <tr><a class="three">学工号</a><input type="text" name="no" value=<%=tea.getNo()%> disabled="true"></tr>
        <br/>
        <a class="two">姓名</a><input type="text" name="name" value=<%=tea.getName() %>>
        <br/>
        <a class="two">专业</a><input type="text" name="discipline" value=<%=tea.getDiscipline() %>>
        <br/>
        <a class="two">邮箱</a><input type="text" name="mail" value=<%=tea.getMail() %> >
        <br/>
        <a class="two">密码</a><input type="text" name="pwd" value=<%=tea.getPwd() %>>
        <br/>
        <input type="submit" value="确定" >
        <a class='x' href='tea.jsp'; onclick="msg(0); return false;">返回</a>
			</form></div>
</body>
</html>