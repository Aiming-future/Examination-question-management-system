<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="java.util.*,java.sql.*,a.DaoDrv,a.DaoTable,a.DaoSx,a.DaoTable1,a.DaoTable2"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<body>
<center><%="一:应用题" %></center>
<% DaoSx t=new DaoSx();List <DaoTable1>l=t.fg5();Iterator <DaoTable1>it=l.iterator();int i=1;
	while(it.hasNext()){
	   DaoTable1 c=it.next(); %>
       <%=i%><%=":"%><%=c.tm %><%="(10分)" %><br/><br/><br/><br/><br/>
        <%i++;} %>
</body>
</html>