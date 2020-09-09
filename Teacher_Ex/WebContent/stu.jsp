<%@page import="manager.Student"%>
<%@page import="manager.ManagerDaoimpl"%>
<%@page import="manager.ManagerDao"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<link rel="stylesheet" type="text/css" href="css/sstudent.css">
		<script type="text/javascript" src="js/stu.js"></script>
		<meta charset="utf-8">
		<title>学生信息管理</title>
		<style type="text/css">
body {background-image:url(images/bg.jpg)}
table tbody {
                display: block;
                height: 500px;
                overflow-y: scroll;        
            }           
            tbody tr { 
                display: table;
                width: 100%;
                table-layout: fixed;
            }
</style>
		</head>
		<body >
		<div  class="bg">
			<div class="hstu"><h1>学生信息管理</h1></div>
			<div>
			<div class="left">
				<ul>
				<input type="button" onClick="msgbox(1)"  value="创建"  class="bl"> <br/><br/>
				<input type="button" onClick="upd()" value="修改" class="gr"> <br/><br/>
				<input type="button" onClick="del()" value="删除" class="re"> <br/><br/>
				<input type="button" onClick="find(1)" value="查找" class="abc"> <br/><br/>
				<input type="button" onClick="fan()" value="返回" class="fh"> <br/><br/>
				</ul>
			</div>
			<div class="tdiv">
				<table class="right" id="pro" border="1px"  onclick="selectrow(this)"> <!-- onmouseover="getrow(this)" onmouseout="backrow(this)" -->
					<tr>
						<th>学工号</th>
						<th>姓名</th>
						<th>专业</th>
						<th>邮箱</th>
						<th>密码</th>
					</tr>
					 <%
					  
			           ManagerDao dao=new ManagerDaoimpl();
			           List<Student> list =dao.getAllStu();   
			           for(Student tea:list)
			           {%>
			          <tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='rgb(100,155,196)';">
			              <td><%=tea.getNo() %></td>
			              <td><%=tea.getName() %></td>
			              <td><%=tea.getDiscipline() %></td>
			              <td><%=tea.getMail() %></td>
			              <td><%=tea.getPwd() %></td>
			          </tr>
			            <%}
			       %>
				</table>
			</div>
			</div>
			
			
			<div id='insert' class="tinsert">                                                 <!-- 添加 -->
			<form action="StuInsert" method="post">
        <input type="text" name="no" placeholder="学工号">
        <br/>
        <input type="text" name="name" placeholder="姓名">
        <br/>
        <input type="text" name="discipline" placeholder="专业">
        <br/>
        <input type="text" name="mail" placeholder="邮箱">
        <br/>
        <input type="text" name="pwd" placeholder="密码">
        <br/>
        <input type="submit" value="确定" >
        <a class='x' href='' onclick="msgbox(0); return false;">关闭</a>
        </form>
			</div>
			
			
			<div id ='find' class="tfind">
			<form action="GetStuByNo" method="post" >
			<input type="text" name="findno" placeholder="学工号"/>
			<br/>
			<input type="submit" value="确定"/>
			<a class='x' href='' onclick="find(0);return false;">关闭</a>
			</form></div>
			</div>
		</body>
	</html>