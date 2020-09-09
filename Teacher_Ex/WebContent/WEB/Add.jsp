<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>添加</title>
</head>
<body style="background-Color:#d4e3e5;">
<form action="../Add" method="post">
<div font-color="red">

          <td>编号<input type="text" name="no" required="required"></td></br></br>
          <td><font color="red">（编号为必填选项）</font></td></br></br>
          <td>题目<input type="text" name="detail"></td></br></br>
          <td>习题答案编号<input type="text" name="anso"></td></br></br>
          <td>关键字<input type="text" name="keyw"></td></br></br>
          <td>难度系数<input type="text" name="dif"></td></br></br>
          <td>所属章节编号<input type="text" name="cha_no"></td></br></br>
          <td>所属章节标题<input type="text" name="cha_title"></td></br></br>
          <td>所属章节要点<input type="text" name="cha_mpoint"></td></br></br>
          <td>习题类型<input type="text" name="type"></td></br>
</div>
</br>
<div align="center"><input style="width: 60px;height: 40px;" type="submit"  value="提交"  onmouseover="this.style.backgroundColor='#FF44FF';" onmouseout="this.style.backgroundColor='white';" ></div>
</body>

</html>