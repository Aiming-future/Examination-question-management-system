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
<form action="d.jsp" method="post">
<center><%="一:选择题" %></center>
<%  DaoSx t=new DaoSx();List <DaoTable>l=t.fg3();Iterator <DaoTable>it=l.iterator();int i=1;
	if(it.hasNext()){
	   DaoTable c=it.next(); %>
       <%=i%><%=":"%><%=c.tm %><%="(3分)" %><br/>
       <input type="radio" name="a" value="A" ><%=c.xx1 %>
       <input type="radio" name="a" value="B" ><%=c.xx2 %>
       <input type="radio" name="a" value="C" ><%=c.xx3 %>
       <input type="radio" name="a" value="D" ><%=c.xx4 %><br/>
       <br/><br/>
       <%i++;}
     if(it.hasNext()){
	   DaoTable c=it.next(); %>
       <%=i%><%=":"%><%=c.tm %><%="(3分)" %><br/>
       <input type="radio" name="b" value="A" ><%=c.xx1 %>
       <input type="radio" name="b" value="B" ><%=c.xx2 %>
       <input type="radio" name="b" value="C" ><%=c.xx3 %>
       <input type="radio" name="b" value="D" ><%=c.xx4 %><br/>
       <br/><br/>
       <%i++;}
     if(it.hasNext()){
  	   DaoTable c=it.next(); %>
         <%=i%><%=":"%><%=c.tm %><%="(3分)" %><br/>
         <input type="radio" name="c" value="A" ><%=c.xx1 %>
         <input type="radio" name="c" value="B" ><%=c.xx2 %>
         <input type="radio" name="c" value="C" ><%=c.xx3 %>
         <input type="radio" name="c" value="D" ><%=c.xx4 %><br/>
         <br/><br/>
         <%i++;}
     if(it.hasNext()){
  	   DaoTable c=it.next(); %>
         <%=i%><%=":"%><%=c.tm %><%="(3分)" %><br/>
         <input type="radio" name="d" value="A" ><%=c.xx1 %>
         <input type="radio" name="d" value="B" ><%=c.xx2 %>
         <input type="radio" name="d" value="C" ><%=c.xx3 %>
         <input type="radio" name="d" value="D" ><%=c.xx4 %><br/>
         <br/><br/>
         <%i++;}
     if(it.hasNext()){
  	   DaoTable c=it.next(); %>
         <%=i%><%=":"%><%=c.tm %><%="(3分)" %><br/>
         <input type="radio" name="e" value="A" ><%=c.xx1 %>
         <input type="radio" name="e" value="B" ><%=c.xx2 %>
         <input type="radio" name="e" value="C" ><%=c.xx3 %>
         <input type="radio" name="e" value="D" ><%=c.xx4 %><br/>
         <br/><br/>
         <%i++;}
     if(it.hasNext()){
  	   DaoTable c=it.next(); %>
         <%=i%><%=":"%><%=c.tm %><%="(3分)" %><br/>
         <input type="radio" name="f" value="A" ><%=c.xx1 %>
         <input type="radio" name="f" value="B" ><%=c.xx2 %>
         <input type="radio" name="f" value="C" ><%=c.xx3 %>
         <input type="radio" name="f" value="D" ><%=c.xx4 %><br/>
         <br/><br/>
         <%i++;}
     if(it.hasNext()){
    	   DaoTable c=it.next(); %>
           <%=i%><%=":"%><%=c.tm %><%="(3分)" %><br/>
           <input type="radio" name="g" value="A" ><%=c.xx1 %>
           <input type="radio" name="g" value="B" ><%=c.xx2 %>
           <input type="radio" name="g" value="C" ><%=c.xx3 %>
           <input type="radio" name="g" value="D" ><%=c.xx4 %><br/>
           <br/><br/>
           <%i++;}
     if(it.hasNext()){
  	   DaoTable c=it.next(); %>
         <%=i%><%=":"%><%=c.tm %><%="(3分)" %><br/>
         <input type="radio" name="h" value="A" ><%=c.xx1 %>
         <input type="radio" name="h" value="B" ><%=c.xx2 %>
         <input type="radio" name="h" value="C" ><%=c.xx3 %>
         <input type="radio" name="h" value="D" ><%=c.xx4 %><br/>
         <br/><br/>
         <%i++;}
     if(it.hasNext()){
  	   DaoTable c=it.next(); %>
         <%=i%><%=":"%><%=c.tm %><%="(3分)" %><br/>
         <input type="radio" name="i" value="A" ><%=c.xx1 %>
         <input type="radio" name="i" value="B" ><%=c.xx2 %>
         <input type="radio" name="i" value="C" ><%=c.xx3 %>
         <input type="radio" name="i" value="D" ><%=c.xx4 %><br/>
         <br/><br/>
         <%i++;}
     if(it.hasNext()){
  	   DaoTable c=it.next(); %>
         <%=i%><%=":"%><%=c.tm %><%="(3分)" %><br/>
         <input type="radio" name="j" value="A" ><%=c.xx1 %>
         <input type="radio" name="j" value="B" ><%=c.xx2 %>
         <input type="radio" name="j" value="C" ><%=c.xx3 %>
         <input type="radio" name="j" value="D" ><%=c.xx4 %><br/>
         <br/><br/>
         <%i++;}
       if(it.hasNext()){
	   DaoTable c=it.next(); %>
       <%=i%><%=":"%><%=c.tm %><%="(3分)" %><br/>
       <input type="radio" name="k" value="A" ><%=c.xx1 %>
       <input type="radio" name="k" value="B" ><%=c.xx2 %>
       <input type="radio" name="k" value="C" ><%=c.xx3 %>
       <input type="radio" name="k" value="D" ><%=c.xx4 %><br/>
       <br/><br/>
       <%i++;} 
       if(it.hasNext()){
    	   DaoTable c=it.next(); %>
           <%=i%><%=":"%><%=c.tm %><%="(3分)" %><br/>
           <input type="radio" name="a1" value="A" ><%=c.xx1 %>
           <input type="radio" name="a1" value="B" ><%=c.xx2 %>
           <input type="radio" name="a1" value="C" ><%=c.xx3 %>
           <input type="radio" name="a1" value="D" ><%=c.xx4 %><br/>
           <br/><br/>
           <%i++;}
         if(it.hasNext()){
    	   DaoTable c=it.next(); %>
           <%=i%><%=":"%><%=c.tm %><%="(3分)" %><br/>
           <input type="radio" name="b1" value="A" ><%=c.xx1 %>
           <input type="radio" name="b1" value="B" ><%=c.xx2 %>
           <input type="radio" name="b1" value="C" ><%=c.xx3 %>
           <input type="radio" name="b1" value="D" ><%=c.xx4 %><br/>
           <br/><br/>
           <%i++;}
         if(it.hasNext()){
      	   DaoTable c=it.next(); %>
             <%=i%><%=":"%><%=c.tm %><%="(3分)" %><br/>
             <input type="radio" name="c1" value="A" ><%=c.xx1 %>
             <input type="radio" name="c1" value="B" ><%=c.xx2 %>
             <input type="radio" name="c1" value="C" ><%=c.xx3 %>
             <input type="radio" name="c1" value="D" ><%=c.xx4 %><br/>
             <br/><br/>
             <%i++;}
         if(it.hasNext()){
      	   DaoTable c=it.next(); %>
             <%=i%><%=":"%><%=c.tm %><%="(3分)" %><br/>
             <input type="radio" name="d1" value="A" ><%=c.xx1 %>
             <input type="radio" name="d1" value="B" ><%=c.xx2 %>
             <input type="radio" name="d1" value="C" ><%=c.xx3 %>
             <input type="radio" name="d1" value="D" ><%=c.xx4 %><br/>
             <br/><br/>
             <%i++;}
         if(it.hasNext()){
      	   DaoTable c=it.next(); %>
             <%=i%><%=":"%><%=c.tm %><%="(3分)" %><br/>
             <input type="radio" name="e1" value="A" ><%=c.xx1 %>
             <input type="radio" name="e1" value="B" ><%=c.xx2 %>
             <input type="radio" name="e1" value="C" ><%=c.xx3 %>
             <input type="radio" name="e1" value="D" ><%=c.xx4 %><br/>
             <br/><br/>
             <%i++;}
         if(it.hasNext()){
      	   DaoTable c=it.next(); %>
             <%=i%><%=":"%><%=c.tm %><%="(3分)" %><br/>
             <input type="radio" name="f1" value="A" ><%=c.xx1 %>
             <input type="radio" name="f1" value="B" ><%=c.xx2 %>
             <input type="radio" name="f1" value="C" ><%=c.xx3 %>
             <input type="radio" name="f1" value="D" ><%=c.xx4 %><br/>
             <br/><br/>
             <%i++;}
         if(it.hasNext()){
      	   DaoTable c=it.next(); %>
             <%=i%><%=":"%><%=c.tm %><%="(3分)" %><br/>
             <input type="radio" name="g1" value="A" ><%=c.xx1 %>
             <input type="radio" name="g1" value="B" ><%=c.xx2 %>
             <input type="radio" name="g1" value="C" ><%=c.xx3 %>
             <input type="radio" name="g1" value="D" ><%=c.xx4 %><br/>
             <br/><br/>
             <%i++;}
         if(it.hasNext()){
      	   DaoTable c=it.next(); %>
             <%=i%><%=":"%><%=c.tm %><%="(3分)" %><br/>
             <input type="radio" name="h1" value="A" ><%=c.xx1 %>
             <input type="radio" name="h1" value="B" ><%=c.xx2 %>
             <input type="radio" name="h1" value="C" ><%=c.xx3 %>
             <input type="radio" name="h1" value="D" ><%=c.xx4 %><br/>
             <br/><br/>
             <%i++;}
         if(it.hasNext()){
      	   DaoTable c=it.next(); %>
             <%=i%><%=":"%><%=c.tm %><%="(3分)" %><br/>
             <input type="radio" name="i1" value="A" ><%=c.xx1 %>
             <input type="radio" name="i1" value="B" ><%=c.xx2 %>
             <input type="radio" name="i1" value="C" ><%=c.xx3 %>
             <input type="radio" name="i1" value="D" ><%=c.xx4 %><br/>
             <br/><br/>
             <%i++;}
         if(it.hasNext()){
      	   DaoTable c=it.next(); %>
             <%=i%><%=":"%><%=c.tm %><%="(3分)" %><br/>
             <input type="radio" name="j1" value="A" ><%=c.xx1 %>
             <input type="radio" name="j1" value="B" ><%=c.xx2 %>
             <input type="radio" name="j1" value="C" ><%=c.xx3 %>
             <input type="radio" name="j1" value="D" ><%=c.xx4 %><br/>
             <br/><br/>
             <%i++;}
           if(it.hasNext()){
    	   DaoTable c=it.next(); %>
           <%=i%><%=":"%><%=c.tm %><%="(3分)" %><br/>
           <input type="radio" name="k1" value="A" ><%=c.xx1 %>
           <input type="radio" name="k1" value="B" ><%=c.xx2 %>
           <input type="radio" name="k1" value="C" ><%=c.xx3 %>
           <input type="radio" name="k1" value="D" ><%=c.xx4 %><br/>
           <br/><br/>
           <%i++;} 
           if(it.hasNext()){
        	   DaoTable c=it.next(); %>
               <%=i%><%=":"%><%=c.tm %><%="(3分)" %><br/>
               <input type="radio" name="a2" value="A" ><%=c.xx1 %>
               <input type="radio" name="a2" value="B" ><%=c.xx2 %>
               <input type="radio" name="a2" value="C" ><%=c.xx3 %>
               <input type="radio" name="a2" value="D" ><%=c.xx4 %><br/>
               <br/><br/>
               <%i++;}
             if(it.hasNext()){
        	   DaoTable c=it.next(); %>
               <%=i%><%=":"%><%=c.tm %><%="(3分)" %><br/>
               <input type="radio" name="b2" value="A" ><%=c.xx1 %>
               <input type="radio" name="b2" value="B" ><%=c.xx2 %>
               <input type="radio" name="b2" value="C" ><%=c.xx3 %>
               <input type="radio" name="b2" value="D" ><%=c.xx4 %><br/>
               <br/><br/>
               <%i++;}
             if(it.hasNext()){
          	   DaoTable c=it.next(); %>
                 <%=i%><%=":"%><%=c.tm %><%="(3分)" %><br/>
                 <input type="radio" name="c2" value="A" ><%=c.xx1 %>
                 <input type="radio" name="c2" value="B" ><%=c.xx2 %>
                 <input type="radio" name="c2" value="C" ><%=c.xx3 %>
                 <input type="radio" name="c2" value="D" ><%=c.xx4 %><br/>
                 <br/><br/>
                 <%i++;}
             if(it.hasNext()){
          	   DaoTable c=it.next(); %>
                 <%=i%><%=":"%><%=c.tm %><%="(3分)" %><br/>
                 <input type="radio" name="d2" value="A" ><%=c.xx1 %>
                 <input type="radio" name="d2" value="B" ><%=c.xx2 %>
                 <input type="radio" name="d2" value="C" ><%=c.xx3 %>
                 <input type="radio" name="d2" value="D" ><%=c.xx4 %><br/>
                 <br/><br/>
                 <%i++;}
             if(it.hasNext()){
          	   DaoTable c=it.next(); %>
                 <%=i%><%=":"%><%=c.tm %><%="(3分)" %><br/>
                 <input type="radio" name="e2" value="A" ><%=c.xx1 %>
                 <input type="radio" name="e2" value="B" ><%=c.xx2 %>
                 <input type="radio" name="e2" value="C" ><%=c.xx3 %>
                 <input type="radio" name="e2" value="D" ><%=c.xx4 %><br/>
                 <br/><br/>
                 <%i++;}
             if(it.hasNext()){
          	   DaoTable c=it.next(); %>
                 <%=i%><%=":"%><%=c.tm %><%="(3分)" %><br/>
                 <input type="radio" name="f2" value="A" ><%=c.xx1 %>
                 <input type="radio" name="f2" value="B" ><%=c.xx2 %>
                 <input type="radio" name="f2" value="C" ><%=c.xx3 %>
                 <input type="radio" name="f2" value="D" ><%=c.xx4 %><br/>
                 <br/><br/>
                 <%i++;}
             if(it.hasNext()){
          	   DaoTable c=it.next(); %>
                 <%=i%><%=":"%><%=c.tm %><%="(3分)" %><br/>
                 <input type="radio" name="g2" value="A" ><%=c.xx1 %>
                 <input type="radio" name="g2" value="B" ><%=c.xx2 %>
                 <input type="radio" name="g2" value="C" ><%=c.xx3 %>
                 <input type="radio" name="g2" value="D" ><%=c.xx4 %><br/>
                 <br/><br/>
                 <%i++;}
             if(it.hasNext()){
          	   DaoTable c=it.next(); %>
                 <%=i%><%=":"%><%=c.tm %><%="(3分)" %><br/>
                 <input type="radio" name="h2" value="A" ><%=c.xx1 %>
                 <input type="radio" name="h2" value="B" ><%=c.xx2 %>
                 <input type="radio" name="h2" value="C" ><%=c.xx3 %>
                 <input type="radio" name="h2" value="D" ><%=c.xx4 %><br/>
                 <br/><br/>
                 <%i++;}
             if(it.hasNext()){
          	   DaoTable c=it.next(); %>
                 <%=i%><%=":"%><%=c.tm %><%="(3分)" %><br/>
                 <input type="radio" name="i2" value="A" ><%=c.xx1 %>
                 <input type="radio" name="i2" value="B" ><%=c.xx2 %>
                 <input type="radio" name="i2" value="C" ><%=c.xx3 %>
                 <input type="radio" name="i2" value="D" ><%=c.xx4 %><br/>
                 <br/><br/>
                 <%i++;}
             if(it.hasNext()){
          	   DaoTable c=it.next(); %>
                 <%=i%><%=":"%><%=c.tm %><%="(3分)" %><br/>
                 <input type="radio" name="j2" value="A" ><%=c.xx1 %>
                 <input type="radio" name="j2" value="B" ><%=c.xx2 %>
                 <input type="radio" name="j2" value="C" ><%=c.xx3 %>
                 <input type="radio" name="j2" value="D" ><%=c.xx4 %><br/>
                 <br/><br/>
                 <%i++;}
               if(it.hasNext()){
        	   DaoTable c=it.next(); %>
               <%=i%><%=":"%><%=c.tm %><%="(3分)" %><br/>
               <input type="radio" name="k2" value="A" ><%=c.xx1 %>
               <input type="radio" name="k2" value="B" ><%=c.xx2 %>
               <input type="radio" name="k2" value="C" ><%=c.xx3 %>
               <input type="radio" name="k2" value="D" ><%=c.xx4 %><br/>
               <br/><br/>
               <%i++;}
               if(it.hasNext()){
            	   DaoTable c=it.next(); %>
                   <%=i%><%=":"%><%=c.tm %><%="(3分)" %><br/>
                   <input type="radio" name="a3" value="A" ><%=c.xx1 %>
                   <input type="radio" name="a3" value="B" ><%=c.xx2 %>
                   <input type="radio" name="a3" value="C" ><%=c.xx3 %>
                   <input type="radio" name="a3" value="D" ><%=c.xx4 %><br/>
                   <br/><br/>
                   <%i++;}
                 if(it.hasNext()){
            	   DaoTable c=it.next(); %>
                   <%=i%><%=":"%><%=c.tm %><%="(3分)" %><br/>
                   <input type="radio" name="b3" value="A" ><%=c.xx1 %>
                   <input type="radio" name="b3" value="B" ><%=c.xx2 %>
                   <input type="radio" name="b3" value="C" ><%=c.xx3 %>
                   <input type="radio" name="b3" value="D" ><%=c.xx4 %><br/>
                   <br/><br/>
                   <%i++;}
                 if(it.hasNext()){
              	   DaoTable c=it.next(); %>
                     <%=i%><%=":"%><%=c.tm %><%="(3分)" %><br/>
                     <input type="radio" name="c3" value="A" ><%=c.xx1 %>
                     <input type="radio" name="c3" value="B" ><%=c.xx2 %>
                     <input type="radio" name="c3" value="C" ><%=c.xx3 %>
                     <input type="radio" name="c3" value="D" ><%=c.xx4 %><br/>
                     <br/><br/>
                     <%i++;}%> 
<input type="submit" value="结束答题"></form>
</body>
</html>