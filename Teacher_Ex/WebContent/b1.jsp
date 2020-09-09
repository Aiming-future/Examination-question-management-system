<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="java.util.*,java.sql.*,a.DaoDrv,a.DaoTable,a.DaoSx,a.DaoTable1,a.DaoTable2,a.DaoTable4,a.DaoTable5"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<form>
<% DaoSx t=new DaoSx();List <DaoTable1>l=t.fg4();Iterator <DaoTable1>it=l.iterator();int i=1,sum=0;
response.setContentType("text/html;charset=utf-8");
request.setCharacterEncoding("utf-8");
	if(it.hasNext()){
	   DaoTable1 c=it.next(); DaoTable5 y=new DaoTable5();y.xh=i;y.da=request.getParameter("p");t.insert(y);%>
       <%if(request.getParameter("p").equals(c.da)){sum+=5;} %>
       <%=c.da %><br/>
        <%i++;} 
        if(it.hasNext()){
	   DaoTable1 c=it.next();String s=request.getParameter("pp"); DaoTable5 y=new DaoTable5();y.xh=i;y.da=request.getParameter("pp");t.insert(y);%>
       <%if(s.equals(c.da)){sum+=5;} %>
       <%=c.da %><br/>
        <%i++;}
        if(it.hasNext()){
	   DaoTable1 c=it.next(); DaoTable5 y=new DaoTable5();y.xh=i;y.da=request.getParameter("ppp");t.insert(y);%>
       <%if(request.getParameter("ppp").equals(c.da)){sum+=5;} %>
        <%i++;}
        if(it.hasNext()){
	   DaoTable1 c=it.next();DaoTable5 y=new DaoTable5();y.xh=i;y.da=request.getParameter("pppp");t.insert(y);%>
       <%if(request.getParameter("pppp").equals(c.da)){sum+=5;}%>
        <%i++;}
        if(it.hasNext()){
	   DaoTable1 c=it.next();DaoTable5 y=new DaoTable5();y.xh=i;y.da=request.getParameter("ppppp");t.insert(y); %>
       <%if(request.getParameter("ppppp").equals(c.da)){sum+=5;} %>
        <%i++;}
        if(it.hasNext()){
	   DaoTable1 c=it.next();DaoTable5 y=new DaoTable5();y.xh=i;y.da=request.getParameter("pppppp");t.insert(y); %>
       <%if(request.getParameter("pppppp").equals(c.da)){sum+=5;} %>
        <%i++;}%>
        <center><%="简答题得分:" %><%=sum %><%DaoTable4 y=new DaoTable4();y.xz=sum;y.bm=1;t.insert1(y) ; %></center></form>
     <%request.getRequestDispatcher("f.jsp").forward(request, response); %>
</body>
</html>