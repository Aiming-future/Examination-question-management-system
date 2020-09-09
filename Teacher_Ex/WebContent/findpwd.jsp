<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>找回密码</title>
<link href="css/forget.css"  rel="stylesheet" type="text/css"/>
<style>
div.suc{
    position:relative;
    top:60px;
    left:90px;
    width:500px;
    height:200px;
    
}
</style>
</head>
<body>
<div class="body">
<div class="main">
<br/><br/>
<span class="tou"><center>忘&nbsp;记&nbsp;密&nbsp;码</center></span>
<div class="suc">
<font size="6"><center>您的密码是：<%=session.getAttribute("password") %></center></font><br/><br/><br/>
<a href="HomePage.jsp"><font size="6"><center>重新登陆</center></font></a>
</div>
</div>
</div>

</body>
</html>