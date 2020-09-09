<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="dao.*,java.util.ArrayList,java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>查询结果</title>
<style type="text/css">
table.hovertable {
	font-family: verdana,arial,sans-serif;
	font-size:11px;
	color:#333333;
	border-width: 1px;
	border-color: #999999;
	border-collapse: collapse;
	align-content: center;
}
table.hovertable th {
	background-color:#c3dde0;
	border-width: 1px;
	padding: 8px;
	border-style: solid;
	border-color: #a9c6c9;
}
table.hovertable tr {
	background-color:#d4e3e5;
}
table.hovertable td {
	border-width: 1px;
	padding: 8px;
	border-style: solid;
	border-color: #a9c6c9;
}
</style>
</head>
<body style="background-image: url(bg2.jpg);background-size: 100%">
<div align="center">
<%List<Problem>  l1=(ArrayList<Problem>)session.getAttribute("p1");
           List<Problem>  l2=(ArrayList<Problem>)session.getAttribute("p2");
           boolean d=session.getAttribute("detail").equals("");
           if((l1.size()==0&&d)||(l1.size()==0&&l2.size()==0))
           {%>
        	   <div style="margin-top:200px;margin-left:120px; color: red;font-size:100px;">查询无果!</div>
        	   
           <% }
           else{%>
<table border="1" class="hovertable" id="pro1" width="100%">
      <tr style="color: red;">
          <td>编号</td>
          <td>题目</td>
          <td>习题答案编号</td>
          <td>关键字</td>
          <td>难度系数</td>
          <td>所属章节编号</td>
          <td>所属章节标题</td>
          <td>所属章节要点</td>
          <td>习题类型</td>
      </tr>
        
           
           <%if(!d)
           {
           for(Problem p1:l1)
           {%>
          <tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';" ondblclick="this.style.backgroundColor='blue';">
              <td><%=p1.getNo() %></td>
              <td><%=p1.getDetail() %></td>
              <td><%=p1.getAnsno() %>></td>
              <td><%=p1.getKeyw()%>></td>
              <td><%=p1.getDif() %></td>
              <td><%=p1.getCha_no() %></td>
              <td><%=p1.getChar_title() %></td>
              <td><%=p1.getChar_mpoint()%></td>
              <td><%=p1.getType()%></td>
          </tr>
          <%}
          for(Problem p2:l2)
           {%>
          <tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';" ondblclick="this.style.backgroundColor='blue';">
              <td><%=p2.getNo() %></td>
              <td><%=p2.getDetail() %></td>
              <td><%=p2.getAnsno() %>></td>
              <td><%=p2.getKeyw()%>></td>
              <td><%=p2.getDif() %></td>
              <td><%=p2.getCha_no() %></td>
              <td><%=p2.getChar_title() %></td>
              <td><%=p2.getChar_mpoint()%></td>
              <td><%=p2.getType()%></td>
          </tr>
          <%}
          }else{
        	  for(Problem p1:l1)
              {%>
             <tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';" ondblclick="this.style.backgroundColor='blue';">
                 <td><%=p1.getNo() %></td>
                 <td><%=p1.getDetail() %></td>
                 <td><%=p1.getAnsno() %>></td>
                 <td><%=p1.getKeyw()%>></td>
                 <td><%=p1.getDif() %></td>
                 <td><%=p1.getCha_no() %></td>
                 <td><%=p1.getChar_title() %></td>
                 <td><%=p1.getChar_mpoint()%></td>
                 <td><%=p1.getType()%></td>
             </tr>
             <%}
          } %>
           
            
       
  </table>
  <%}%>
  </div>
  <script type="text/javascript">
var table=document.getElementById("pro1"),
tds = table.getElementsByTagName("tr");
for(var i=0,j=tds.length;i<j;i++){
tds[i].ondblclick=function(){

	sessionStorage.setItem("selected", this.children[0].innerHTML);
	alert(session.getItem("selected"));
	 
}
}
</script>
  
</body>
</html>