<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="java.util.*,java.sql.*,a.DaoDrv,a.DaoTable,a.DaoSx,a.DaoTable1,a.DaoTable2,a.DaoTable5"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<body>
<center><%="一:简答题" %></center>
<form action="b1.jsp" method="post">
<% DaoSx t=new DaoSx();List <DaoTable1>l=t.fg4();List <DaoTable5>l1=t.fg10();Iterator <DaoTable1>it=l.iterator();Iterator <DaoTable5>it1=l1.iterator();int i=1,f=0;
	if(it.hasNext()){
	   DaoTable1 c=it.next();%>
       <%=i%><%=":"%><%=c.tm %><%="(5分)" %><br/>
       <textarea cols="20" rows="5" name="p">
       <%if(!it1.hasNext()){ %><%="" %><%}else{DaoTable5 c1=it1.next();f=1; %><%=c1.da %><%} %>
       </textarea><br/>
       <br/><br/><br/><br/>
        <%i++;} 
      if(it.hasNext()){
	   DaoTable1 c=it.next(); %>
       <%=i%><%=":"%><%=c.tm %><%="(5分)" %><br/>
       <textarea cols="20" rows="5" name="pp"><%if(!it1.hasNext()){ %><%="" %><%}else{DaoTable5 c1=it1.next();f=1; %><%=c1.da %><%} %></textarea><br/>
       <br/><br/><br/><br/>
        <%i++;} 
        if(it.hasNext()){
	   DaoTable1 c=it.next(); %>
       <%=i%><%=":"%><%=c.tm %><%="(5分)" %><br/>
       <textarea cols="20" rows="5" name="ppp"><%if(!it1.hasNext()){ %><%="" %><%}else{DaoTable5 c1=it1.next();f=1; %><%=c1.da %><%} %></textarea><br/>
       <br/><br/><br/><br/>
        <%i++;} 
        if(it.hasNext()){
	   DaoTable1 c=it.next(); %>
       <%=i%><%=":"%><%=c.tm %><%="(5分)" %><br/>
       <textarea cols="20" rows="5" name="pppp"><%if(!it1.hasNext()){ %><%="" %><%}else{DaoTable5 c1=it1.next();f=1; %><%=c1.da %><%} %></textarea><br/>
       <br/><br/><br/><br/>
        <%i++;} 
        if(it.hasNext()){
	   DaoTable1 c=it.next(); %>
       <%=i%><%=":"%><%=c.tm %><%="(5分)" %><br/>
       <textarea cols="20" rows="5" name="ppppp"><%if(!it1.hasNext()){ %><%="" %><%}else{DaoTable5 c1=it1.next();f=1; %><%=c1.da %><%} %></textarea><br/>
       <br/><br/><br/><br/>
        <%i++;}
        if(it.hasNext()){
	   DaoTable1 c=it.next(); %>
       <%=i%><%=":"%><%=c.tm %><%="(5分)" %><br/>
       <textarea cols="20" rows="5" name="pppppp"><%if(!it1.hasNext()){ %><%="" %><%}else{DaoTable5 c1=it1.next();f=1; %><%=c1.da %><%} %></textarea><br/>
       <br/><br/><br/><br/>
        <%i++;}%>
        <%if(f==0){ %>
       <input type="submit" value="结束答题"><%}else{ %>
       <a href="http://localhost:8080/Teacher_Ex/f.jsp">结束回顾</a><%} %>
       </form>
</body>
</html>