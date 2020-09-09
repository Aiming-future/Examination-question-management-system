<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="java.util.*,java.sql.ResultSet,java.sql.SQLException,java.sql.ResultSet,java.sql.SQLException,a.DaoDrv,a.DaoTable,a.DaoSx,a.DaoTable1,a.DaoTable2,a.DaoTable3,a.DaoTable4"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>ajax局部刷新</title>
<style>
.userMenu {
float: left;
width: 200px;
}
#content {
float: left;
}
</style>
<meta charset="utf-8">
<script src="http://code.jquery.com/jquery-1.8.0.min.js"></script>
</head>
<body>
<div class="userWrap">
<ul class="userMenu">
<li class="current" data-id="center">选择题
<%="(" %> 
<%DaoSx t=new DaoSx();DaoTable4 y=t.fg8(); %>
<%if(y==null){ %>
<%="尚未完成,请尽快完成)" %><%}else{ %><%="得分:" %>
<%=y.xz %><%=")"%><%} %>
</li>
<li data-id="account">简答题
<%="(" %> 
<%DaoTable4 y1=t.fg9(); %>
<%if(y1==null){ %>
<%="尚未完成,请尽快完成)" %><%}else{ %><%="得分:" %>
<%=y1.xz %><%=")"%><%} %>
</li>
<li data-id="account1">应用题<%="(请在纸上作答)" %></li>
<input type="button" id="btnStop" value="结束答题" /><br />
<% DaoTable2 b=t.fg6();Date d=new Date(); DaoTable3 c=new DaoTable3();%>
<%c.h=d.getHours(); c.m=d.getMinutes();c.s=d.getSeconds();c.bh=1;t.insert(c);DaoTable3 d1=t.fg7(); %>
<div id="msg">
<%if(b.a*60+(d1.h-d.getHours())*3600+(d1.m-d.getMinutes())*60+d1.s-d.getSeconds()>0){ %>
<%=b.a*60+(d1.h-d.getHours())*3600+(d1.m-d.getMinutes())*60+d1.s-d.getSeconds() %>
<%}else{%> 
<%=0 %> <%}%>
</div>
<div id="timer"/>
</ul>
<div id="content"></div>
</div>
</body>
<script>

//使用js方式实现倒计时效果
var t1;
window.onload = function () {
  //01定位到开始按钮返回一个dom对象
  //02.给开始按钮注册单击事件
  t1= setInterval(start, 1000);
  //03定位到停止按钮返回一个dom对象
  var btnst = document.getElementById('btnStop');
  btnst.onclick = function () {
    clearInterval(t1);
    location.href="g.jsp";
    }
}
//要隔1秒执行的函数
function start() {
  //01.获取div中的文本赋值给一个变量
  var divdom = document.getElementById('msg');
  var divnum = divdom.innerText;
  //判断divnum的值是否为0
  if (divnum > 0) {
	  var c=Math.floor(divnum/3600);
      var d=Math.floor((divnum-c*3600)/60);
      var e=divnum-c*3600-d*60;
      msg = "距离考试结束还有"+c+"时"+d+"分"+e+"秒";
      document.getElementById("timer").innerHTML=msg;
    divnum--;
    //把减过的值重新赋值给divnum
    divdom.innerText = divnum;
  }
  else{ location.href="g.jsp";}
}


$(function() {
$(".userMenu").on("click", "li", function() {
var sId = $(this).data("id"); //获取data-id的值
window.location.hash = sId; //设置锚点
loadInner(sId);
});
function loadInner(sId) {
var sId = window.location.hash;
var pathn, i;
switch(sId) {
case "#center":
pathn = "a.jsp";
i = 0;
break;
case "#account":
pathn = "b.jsp";
i = 1;
break;
case "#account1":
	pathn = "c.jsp";
	i = 3;
	break;
default:
pathn = "h.jsp";
i = 2;
break;
}
$("#content").load(pathn); //加载相对应的内容
$(".userMenu li").eq(i).addClass("current").siblings().removeClass("current"); //当前列表高亮
}
var sId = window.location.hash;
loadInner(sId);
});
</script>

</html>
