<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>查询方式</title>

</head>
<body style="background-image: url(bg4.jpg);background-size: 100%">
</br>
<div align="center" style="font-size: 25px;color: red;">
<form action="../Query" method="post">
按编号查询:<input type="text" name="pro_no" style="width: 300px;height: 40px;"></br></br></br>
按题目信息查询:<input type="text" name="pro_detail" style="width: 300px;height: 40px;"></br></br></br>
<input type="submit" style="opacity:0.8; width: 100px;height: 50px;" value="开始查询" onmouseover="this.style.backgroundColor='#9AFF02';" onmouseout="this.style.backgroundColor='white';">
</div>
</body>
</html>