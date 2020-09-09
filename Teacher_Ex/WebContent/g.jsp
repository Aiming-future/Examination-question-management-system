<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="java.util.*,java.sql.ResultSet,java.sql.SQLException,java.sql.ResultSet,java.sql.SQLException,a.DaoDrv,a.DaoTable,a.DaoSx,a.DaoTable1,a.DaoTable2,a.DaoTable3,a.DaoTable4"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>结束考试</title>
</head>
<body>
<center><p>考试已结束!!!!</p></center>
<%DaoSx t=new DaoSx();Date d=new Date(); DaoTable3 c=new DaoTable3();DaoTable2 b=t.fg6();int y=b.a/60+1;%>
<%c.h=d.getHours()-y; c.m=d.getMinutes();c.s=d.getSeconds();c.bh=1; t.update(c);%>
<a href="StudentPage/StudentPage.jsp">结束考试</a>
</body>
</html>