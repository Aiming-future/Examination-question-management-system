<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>教师系统</title>
<style type="text/css">
a:link {
    color:#000000;
    text-decoration:underline;
    }
    a:visited {
    color:#00ffff;
    text-decoration:none;
    }
    a:hover {
    color:#FF0000;
    text-decoration:none;
    }
    a:active {
    color:#00DB00;
    text-decoration:none;
    }
</style>
</head>
<body  style="background-image: url(bg.jpg);background-size: 100%">
<form action="../TeacherLogout"  method="post">
<div ><font size="7" color="#0080FF">欢迎进入教师板块！</font></div></br></br></br></br></br></br></br></br>
<div align="center">
<a href="../abc.html" target="_blank"><font size="5">试卷操作</font></a></br></br></br></br></br></br>
<a href="Teacher.jsp" target="_blank"><font size="5">习题操作</font></a></br></br></br></br></br>
<input type="submit" value="注销" style="height: 40px;width: 60px;" onmouseover="this.style.backgroundColor='grey';" onmouseout="this.style.backgroundColor='white';">
</div>
</body>
</html>