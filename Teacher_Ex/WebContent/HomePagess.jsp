<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>试题管理系统|中国石油大学（华东）</title>
<link href="css/HomePage.css"  rel="stylesheet" type="text/css"/>
<script src="js/Tips.js" ></script>
    <script >
    
    function openModal() {
        document.getElementById('myModal').style.display = "block";
    }

    function closeModal() {
        document.getElementById('myModal').style.display = "none";
    }
    </script>
<script type="text/javascript">
function SetPwdAndChk() {
    //取用户名
    var usr = document.getElementById('txtUserName').value;
    //将最后一个用户信息写入到Cookie
    SetLastUser(usr);
    //如果记住密码选项被选中
    if (document.getElementById('chkRememberPwd').checked == true) {
        //取密码值
        var pwd = document.getElementById('txtPassword').value;
        var expdate = new Date();
        expdate.setTime(expdate.getTime() + 14 * (24 * 60 * 60 * 1000));
        //将用户名和密码写入到Cookie
        SetCookie(usr, pwd, expdate);
    } else {
        //如果没有选中记住密码,则立即过期
        ResetCookie();
    }
}

function SetLastUser(usr) {
    var id = "49BAC005-7D5B-4231-8CEA-16939BEACD67";
    var expdate = new Date();
    //当前时间加上两周的时间
    expdate.setTime(expdate.getTime() + 14 * (24 * 60 * 60 * 1000));
    SetCookie(id, usr, expdate);
}
//用户名失去焦点时调用该方法
function GetPwdAndChk() {
    var usr = document.getElementById('txtUserName').value;
    var pwd = GetCookie(usr);
    var user=document.forms[0].username.value;
    var d1=document.getElementById("d1");
    if(user=="" || user==null)
    {
    d1.innerHTML="<font color=red>用户名不能为空</font>";
    }else
    {
     	d1.innerHTML="";
    }
    if (pwd != null) {
        document.getElementById('chkRememberPwd').checked = true;
        document.getElementById('txtPassword').value = pwd;
    } else {
        document.getElementById('chkRememberPwd').checked = false;
        document.getElementById('txtPassword').value = "";
    }
}
//取Cookie的值
function GetCookie(name) {
    var arg = name + "=";
    var alen = arg.length;
    var clen = document.cookie.length;
    var i = 0;
    while (i < clen) {
        var j = i + alen;
        //alert(j);
        if (document.cookie.substring(i, j) == arg) return getCookieVal(j);
        i = document.cookie.indexOf(" ", i) + 1;
        if (i == 0) break;
    }
    return null;
}

function getCookieVal(offset) {
    var endstr = document.cookie.indexOf(";", offset);
    if (endstr == -1) endstr = document.cookie.length;
    return unescape(document.cookie.substring(offset, endstr));
}
//写入到Cookie
function SetCookie(name, value, expires) {
    var argv = SetCookie.arguments;
    //本例中length = 3
    var argc = SetCookie.arguments.length;
    var expires = (argc > 2) ? argv[2] : null;
    var path = (argc > 3) ? argv[3] : null;
    var domain = (argc > 4) ? argv[4] : null;
    var secure = (argc > 5) ? argv[5] : false;
    document.cookie = name + "=" + escape(value) + ((expires == null) ? "" : ("; expires=" + expires.toGMTString())) + ((path == null) ? "" : ("; path=" + path)) + ((domain == null) ? "" : ("; domain=" + domain)) + ((secure == true) ? "; secure" : "");
}

function ResetCookie() {
    var usr = document.getElementById('txtUserName').value;
    var expdate = new Date();
    SetCookie(usr, null, expdate);
}
</script>
<script>

</script>
<style>
.modal{
  display: none;
  z-index: 1;
  position:fixed;
  left:77%;
  top:150px;
  width: 300px;
  height:300px;
}
img.QQ{
    width:400px;
    height:400px;
    border-radius:50%; 
}
div.over{
    position:absolute;
    left:350px;
    top:370px;
    width:100px;
    height:100px;
}
span.times{
    font-size:300%;
}
div.func_body{
    width:100%;
    height:1020px;
}
div.func1{
    position:relative;
    width:500px;
    height:500px;
    left:480px;
    top:10%;
    background-color:rgba(240,240,240,0.5);
    border-radius:10px;
}
div.func2{
    position:relative;
    width:500px;
    height:500px;
    left:480px;
    top:15%;
    background-color:rgba(240,240,240,0.5);
    border-radius:10px;
}
div.func3{
    position:relative;
    width:500px;
    height:500px;
    left:1070px;
    top:-66.5%;
    background-color:rgba(240,240,240,0.5);
    border-radius:10px;
}
div.func4{
    position:relative;
    width:500px;
    height:500px;
    left:1070px;
    top:-61.5%;
    background-color:rgba(240,240,240,0.5);
    border-radius:10px;
}
img.func{
    position:relative;
    width:500px;
    height:275px;
    top:2%;
    border-radius:10px;
}
div.imm{
    position:relative;
    height:1300px;
    margin: 0px 40px;
    background-image:url("images/gaoqing1.jpg");  
    background-size:1020px  700px;
    opacity:0.8;
}
span.func_text1{
    font-family:"microsoft yahei";
    font-size:35px;
    font-weight:bold;
    color:#666;
}
span.func_text2{
    font-family:"宋体";
    font-size:22px;
    color:#444;
}
div.foot_text{
    position:relative;
    left:1750px;
    top:-480px;
    width:300px;
    height:10px;
}
img.foot_image1{

    width:175px;
    height:175px;
    border-radius:5px;
}
img.foot_image2{
    width:175px;
    height:175px;
    border-radius:5px;
}
img.foot_image3{
    width:175px;
    height:175px;
    border-radius:5px;
}
div.foot_image1{
    position:relative;
    top:10%;
    left:150px;
    width:180px;
    height:230px;
}
div.foot_image2{
    position:relative;
    top:-82%;
    left:400px;
    width:180px;
    height:230px;
}
div.foot_image3{
    position:relative;
    top:-174%;
    left:650px;
    width:180px;
    height:230px;
}
span.foot_text{
    font-family:"宋体";
    font-weight:bold;
    font-size:20px;
    color:rgba(250,250,250,1);
}
span.foot_QQ{
    font-family:"宋体";
    font-size:23px;
    color:rgba(280,280,280,1);
}
div.log_page{
    width:100%;
    height:700px;
}
img.logo_page{
    width:100%;
    height:700px;
}
div.yanzheng{
    position:relative;
    left:35px;
    width:120px;
    height:20px;
}
div.forget{
    position:relative;
    top:24px;
    left:-6px;
}
</style>
<script type="text/javascript">
    window.onload=function(){
    	var img1=document.getElementById("img1");
    	var imgArr=["images/ban2.png","images/ban3.png","images/ban4.png","images/ban5.png",
    	            "images/ban6.png","images/ban7.png","images/ban8.png","images/ban1.jpg"];
    	var index=0;
    	setInterval(function(){
    		index++;
    		if(index>7){index=index%7;}
    		img1.src=imgArr[index];
    	},4000);
    }
    function change(){
        document.getElementById("code").src="ValidateServlet?a="+Math.random();
        }
</script>
</head>
<body>
<div class="all">
<div class="head">

<div class="head_body">
<span class="head1">试题管理系统</span>
<img class="shu" src="images/shuxian.png">
<span class="head2">统一用户登录界面</span>
<div class="phone">
<font size=5px color=rgba(139,139,139,0.8)>服务电话</font>
123-456-7890
</div>
</div>
</div>
<div class="body">
<div class="log_page">
<img  class="logo_page" id="img1" src="images/ban1.jpg">
<div class="head_op">
试题管理系统
</div>
<div class="side">
<div class="side_img"><a href="#func"> <img  class="side" src="images/more.png" ></a></div>
<div class="side_text"><a href="#func"><center>了解功能</center></a></div>
</div>
<div class="side2">
<div class="side_img2"><a onclick="openModal();"> <img  class="side" src="images/QQ.png" ></a></div>
<div class="side_text2"><center>联系我们</center></div>
</div>
<div id="myModal" class="modal">
    <div class="over">
        <span class="times" onclick="closeModal()">&nbsp;&times;</span>
    </div>
    <div >
        <img class="QQ" src="images/code_.png" >
    </div>
</div>
<div class="logbox">
<div class="logbox_up">
<div class="text">
<form action="login.html"  method="post"  id="form1">
<br/><span class="user_login">&nbsp;&nbsp;用户登录</span><br/><br/>
<font size="4" face="黑体";>&nbsp;&nbsp;&nbsp;&nbsp;用户名：<span id="d1"></span><br/><center></font><input type="text"  class="text" style="width:250px; height:20px " name="username" placeholder="请输入用户名" id="txtUserName" onblur="GetPwdAndChk()" /></center><br/>
<font size="4" face="黑体";>&nbsp;&nbsp;&nbsp;&nbsp;密&nbsp;&nbsp;码：<span id="d2"></span><br/><center></font><input type="password" class="text"  style="width:250px; height:20px "name="password" placeholder="请输入密码" onblur="ma2()" id="txtPassword"/></center><br/>
<div class="yanzheng">
<input type="text"  class="text" name='codetext' style="width: 90px" placeholder="请输入验证码"> <img alt="" src="ValidateServlet" width="95px" title="看不清，换一张"
height="25px" id='code' onclick="change()">
</div>
</div>
<div class="forget"><input type="checkbox" id="chkRememberPwd">记住密码|<a href="forget_pwd.jsp">忘记密码</a></div><br/>
<div class="input-box submit-box"><center><input type="submit" value="登  录" OnClick="SetPwdAndChk()"></center></div>
<div class="fail_tip"><font color="red" face="楷体">验证码错误！！</font></div>
</div>
<div class="logbox_down">
<div class="down_text">
<span class="tips">温馨提示：</span>
<p class="tips">
用户名：学生为10位数的学号，教师为9位数的工号，忘记初始密码可联系管理员.
</p>
</div>
</div>
</div>
</div>
<div class="subtitle">
<p >主要功能展示</p>
<br/>
<hr id="func" style="height:1px;border:none;border-top:2px solid #555555;" /> 
</div>
<div class="func_body">
<div class="imm">
<div class="func1">
<img class="func" src="images/func1.png">
<br/><br/>
<span class="func_text1"><center>在线答题</center></span>
<br/>
<span class="func_text2">&nbsp;&nbsp;&nbsp;可轻松实现学生在线答题并由系统在网上自动完成批改试卷工作，同时快速准确地得到分数并及时反馈给学生，有助于学生自主练习，提高学习效率。</span>
</div>
<div class="func2">
<img class="func" src="images/func2.png">
<br/><br/>
<span class="func_text1"><center>一键组卷</center></span>
<br/>
<span class="func_text2">&nbsp;&nbsp;&nbsp;根据题库里的试题，系统可高效地帮助老师完成组成试卷的工作，题目分配合理，提高作业管理能力，减轻老师工作压力。</span>
</div>
<div class="func3">
<img class="func" src="images/func3.png">
<br/><br/>
<span class="func_text1"><center>题库操作</center></span>
<br/>
<span class="func_text2">&nbsp;&nbsp;&nbsp;由题库管理人员对题库中的题目进行增删改查，界面友好，操作简单，管理方便，能够轻松实现庞大的数据管理。</span>
</div>
<div class="func4">
<img class="func" src="images/func4.png">
<br/><br/>
<span class="func_text1"><center>课件上传</center></span>
<br/>
<span class="func_text2">&nbsp;&nbsp;&nbsp;老师可在系统中上传文件，学生可通过登陆系统及时下载老师所发布的文件，方便学生快速收到相关的内容。</span>
</div>
</div>
</div>
</div>

</div>
<div class="foot">
<div class="foot_image1"><img class="foot_image1" src="images/QQcode1.png"><center><span class="foot_QQ">QQ群1</span></center></div>
<div class="foot_image2"><img class="foot_image2" src="images/QQcode2.png"><center><span class="foot_QQ">QQ群2</span></center></div>
<div class="foot_image3"><img class="foot_image3" src="images/QQcode3.png"><center><span class="foot_QQ">QQ群3</span></center></div>
<div class="foot_text"><span class="foot_text">试题管理系统 Copyright © 2019</span></div>
</div>
</body>
</html>