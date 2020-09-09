<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="java.util.*,java.sql.*,a.DaoDrv,a.DaoTable,a.DaoSx,a.DaoTable1,a.DaoTable2"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>答题页面</title>
</head>
<body>

<%="一:选择题" %><br/>
<% int i=1;
	DaoSx t=new DaoSx();List <DaoTable>l=t.fg();Iterator <DaoTable>it=l.iterator();
	while(it.hasNext()){
	   DaoTable c=it.next();
      t.insert(c); %>
       <%=i%><%=":"%><%=c.tm %><%="(" %><%=c.da %><%=")" %><br/>
        <%=c.xx1 %><%=c.xx2 %><%=c.xx3 %><%=c.xx4 %><br/>
        <%i++;}%>
 <br/><br/><br/><br/>
 <%="一:简答题" %><br/>
     <% int j=1;
	List <DaoTable1>l1=t.fg1();Iterator <DaoTable1>it1=l1.iterator();
	while(it1.hasNext()){
	   DaoTable1 c=it1.next();
       t.insert(c); %>
       <%=j%><%=":"%><%=c.tm %><br>
       <%="答案:"%><%=c.da %><br/>
        <%j++;} %>
        <br/><br/><br/><br/>
 <%="一:应用题" %><br/>
     <% int k=1;
	List <DaoTable1>l2=t.fg2();Iterator <DaoTable1>it2=l2.iterator();
	while(it2.hasNext()){
	   DaoTable1 c=it2.next();
       t.insert1(c); %>
       <%=i%><%=":"%><%=c.tm %><br>
       <%="答案:"%><%=c.da %><br/>
        <%k++;}%>
</body>
</html>