<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="java.util.*,java.sql.*,a.DaoDrv,a.DaoTable,a.DaoSx,a.DaoTable1,a.DaoTable2"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>考试</title>
</head>
<body>
<center><%=request.getAttribute("d")%><%="(满分:100分)" %></center>
<center><%="考试时长:" %><%=request.getAttribute("e")%><%="分钟" %></center>
<% int a=(Integer)request.getAttribute("a");int a1=(Integer)request.getAttribute("b");int a2=(Integer)request.getAttribute("c");int a3=(Integer)request.getAttribute("e"); %>
<%int i1=0,j,d[],b;
 d=new int [10];
for(int k=0;k<10;k++){d[k]=0;}
while(i1<a){
	b=(int)(Math.random()*11)+1;
	for(j=0;j<i1;j++){
		if(d[j]==b){
			break;
		}
	}
	if(j==i1){d[i1]=b;i1++;}
} %>
<%int i2=0,j1,d1[],b1;
 d1=new int [10];
for(int k=0;k<10;k++){d1[k]=0;}
while(i2<a1){
	b1=(int)(Math.random()*9)+1;
	for(j1=0;j1<i2;j1++){
		if(d1[j1]==b1){
			break;
		}
	}
	if(j1==i2){d1[i2]=b1;i2++;}
} %>
<%int i3=0,j2,d2[],b2;
 d2=new int [10];
for(int k=0;k<10;k++){d2[k]=0;}
while(i3<a2){
	b2=(int)(Math.random()*5)+1;
	for(j2=0;j2<i3;j2++){
		if(d2[j2]==b2){
			break;
		}
	}
	if(j2==i3){d2[i3]=b2;i3++;}
} %>
<%="一:选择题(" %><%=a %><%="*3分)" %><br/>
<% for(int i=1;i<=a;i++){
	DaoSx t=new DaoSx();List <DaoTable>l=t.fg();Iterator <DaoTable>it=l.iterator();
	while(it.hasNext()){
	   DaoTable c=it.next();
	   if(c.xh==d[i-1])
       {t.insert(c); %>
       <%=i%><%=":"%><%=c.tm %><%="(" %><%=c.da %><%=")" %><br/>
        <%=c.xx1 %><%=c.xx2 %><%=c.xx3 %><%=c.xx4 %><br/>
        <%}}} %>
 <br/><br/><br/><br/>
 <%="一:简答题(" %><%=a1 %><%="*5分)" %><br/>
     <% for(int i=1;i<=a1;i++){
	DaoSx t=new DaoSx();List <DaoTable1>l=t.fg1();Iterator <DaoTable1>it=l.iterator();
	while(it.hasNext()){
	   DaoTable1 c=it.next();
	   if(c.xh==d1[i-1])
       {t.insert(c); %>
       <%=i%><%=":"%><%=c.tm %><br>
       <%="答案:"%><%=c.da %><br/>
        <%}}} %>
        <br/><br/><br/><br/>
 <%="一:应用题(" %><%=a2 %><%="*10分)" %><br/>
     <% for(int i=1;i<=a2;i++){
	DaoSx t=new DaoSx();List <DaoTable1>l=t.fg2();Iterator <DaoTable1>it=l.iterator();
	while(it.hasNext()){
	   DaoTable1 c=it.next();
	   if(c.xh==d2[i-1])
       {t.insert1(c); %>
       <%=i%><%=":"%><%=c.tm %><br>
       <%="答案:"%><%=c.da %><br/>
        <%}}} %>
 <%DaoSx t=new DaoSx();DaoTable2 l=new DaoTable2();l.a=a3;t.insert(l); %>
</body>
</html>