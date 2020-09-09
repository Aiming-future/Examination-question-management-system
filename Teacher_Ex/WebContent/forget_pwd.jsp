<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>找回密码</title>
<link href="css/forget.css"  rel="stylesheet" type="text/css"/>
</head>
<body>
<div class="body">
<div class="main">
<br/><br/>
<span class="tou"><center>忘&nbsp;记&nbsp;密&nbsp;码</center></span>
<form  class="ss" action="findpwdServlet"  method="post">
<div class="user">&nbsp;&nbsp;请输入用户名：&nbsp;&nbsp;<input type="text" style="width:250px; height:20px "name="username" placeholder="请输入用户名"/></div><br/><br/><br/>
<div class="pwd">请输入您的邮箱：<input type="text" style="width:250px; height:20px "name="email" placeholder="请输入邮箱"/></div><br/><br/>
<div class="input">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input  type="submit" style="width:100px; height:35px " value="确  定">
&nbsp;&nbsp;&nbsp;&nbsp;<a href="HomePage.jsp">返回主界面</a></div>
</div>
</div>
</body>
</html>