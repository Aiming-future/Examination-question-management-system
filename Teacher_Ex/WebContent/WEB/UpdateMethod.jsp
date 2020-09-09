<%@page import="dao.Problem"%>
<%@page import="dao.TeacherDaoImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>修改操作</title>
</head>
<body style="background-Color:#d4e3e5;">
<form action="../Update" method="post">
<%String no=(String)request.getParameter("selected");
TeacherDaoImpl t=new TeacherDaoImpl();
Problem p;
p=t.getProByno1(no);

%>
<div>
      <td>编号<input type="text" name="no" value=<%=p.getNo()%> required="required"></td></br></br>
      <td><font color="red">（编号为必填选项）</font></td></br></br>
          <td>题目<input type="longtext" name="detail" value=<%=p.getDetail()%>></td></br></br>
          <td>习题答案编号<input type="text" name="anso" value=<%=p.getAnsno()%>></td></br></br>
          <td>关键字<input type="text" name="keyw" value=<%=p.getKeyw()%>></td></br></br>
          <td>难度系数<input type="text" name="dif" value=<%=p.getDif()%>></td></br></br>
          <td>所属章节编号<input type="text" name="cha_no" value=<%=p.getCha_no()%>></td></br></br>
          <td>所属章节标题<input type="text" name="cha_title" value=<%=p.getChar_title()%>></td></br></br>
          <td>所属章节要点<input type="text" name="cha_mpoint" value=<%=p.getChar_mpoint()%>></td></br></br>
          <td>习题类型<input type="text" name="type" value=<%=p.getType()%>></td></br></br>
          <td><input type="hidden" name="hid" value=<%=(String)request.getParameter("selected") %>>
      
      </div>

<div align="center"><input style="width: 70px;height: 40px;"  type="submit" value="确认修改" onmouseover="this.style.backgroundColor='#00FFFF';" onmouseout="this.style.backgroundColor='white';">
</div>
</body>
</html>