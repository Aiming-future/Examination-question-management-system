<%@ page language="java"  import="java.util.List"  contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="dao.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Teacher</title>

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
<body>
<div align="center">
<table border="1" class="hovertable" id="pro" table_layout="fixed">
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
        <%
           TeacherDaoImpl dao=new TeacherDaoImpl();
           List<Problem> list =dao.getAllProblem();   
           for(Problem tl:list)
           {%>
          <tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';" ondblclick="this.style.backgroundColor='blue';">
              <td><%=tl.getNo() %></td>
              <td><%=tl.getDetail() %></td>
              <td><%=tl.getAnsno() %>></td>
              <td><%=tl.getKeyw()%>></td>
              <td><%=tl.getDif() %></td>
              <td><%=tl.getCha_no() %></td>
              <td><%=tl.getChar_title() %></td>
              <td><%=tl.getChar_mpoint()%></td>
              <td><%=tl.getType()%></td>
          </tr>
            <%}
       %>
  </table>
  </div>
  
  <script type="text/javascript">
var table=document.getElementById("pro"),
tds = table.getElementsByTagName("tr");
for(var i=0,j=tds.length;i<j;i++){
tds[i].ondblclick=function(){

	sessionStorage.setItem("selected", this.children[0].innerHTML);
	 
}
}
</script>


</body>
</html>