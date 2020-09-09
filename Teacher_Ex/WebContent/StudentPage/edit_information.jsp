<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>学生用户<%=session.getAttribute("user") %></title>
<style>
body{
    padding:0;
    margin:0;
    height:830px;
}
div.body{
    height:1000px;
    background-image:url("../images/background4.jpg");
    background-size:100% 100%;
}
div.head{
    width:100%;
    height:30px;
    background-color:rgba(245,245,245,1);
    border-bottom:1px solid #589aae;
}
div.main{
    position:relative;
    width:660px;
    height:900px;
    top:-870px;
    left:735px;
    background-color:rgba(220,220,220,0.8);
    border-radius:15px;
}
div.left{
    position:relative;
    width:260px;
    height:900px;
    top:25px;
    left:450px;
    background-color:rgba(220,220,220,0.8);
    border-radius:15px;
}
div.right{
    position:relative;
    width:260px;
    height:900px;
    top:-1770px;
    left:1420px;
    background-color:rgba(220,220,220,0.8);
    border-radius:15px;
}
div.wel{
    position:relative;
    width:260px;
    height:30px;
    padding-top:3px;
    left:520px;
}
span.wel{
    font-family:"microsoft yahei";
    font-size:18px;
    font-weight:bold;
    color:#666;
}
div.head_right{
    position:relative;
    width:260px;
    height:30px;
    padding-top:3px;
    left:1400px;
    top:-33px;
}
a.feng{
    position:relative;
    top:-5px;
    left:0;
    font-family:"microsoft yahei";
    font-size:18px;
    font-weight:bold;
    color:#666;
}
div.up{
    position:relative;
    top:-25px;
    left:90px;
}
</style>
<style>
        .sel_mask{                    /*将<a></a>相对定位*/
            position:relative;
            width:100px;
            height:25px;
            background:rgba(130,130,130,1);
            border-radius: 5px;
            box-shadow:1px 1px 5px #169BD5;
            display:inline-block;
            text-decoration: none;
        }
        .sel_mask:hover{         /*添加hover效果*/
            background:#169BD5;
        }
        .sel_mask select{        /*以相同大小将<select></select>绝对定位*/
            top:0px;
            left:0px;
            position:absolute;
            width:100px;
            height:25px;
            opacity:0;
        }
        .sel_mask select option[selected]{
            font-weight:bold
        }
        .sel_mask select option:nth-child(even) {
            background-color:rgba(180,180,180,1);
        }
        .sel_mask select option{
            color:rgba(0,0,0,1);
        }
        .sel_mask span{     /*显示内容*/
            position: absolute;
            top:3px;
            left:5px;
            right: 20px;
            display: inline-block;
            color:rgba(0,0,0,1);
            overflow:hidden;
            text-overflow: ellipsis;
            white-space:nowrap;
        }
        .sel_mask img{          /*箭头图标*/
            display: inline-block;
            position: absolute;
            top:2px;
            right: 5px;
        }
    </style>
    <script>
$(function () {
    $('.sel').change(function () {    // 选择后替换内容并恢复箭头方向
        $('span').html($('.sel').find('option:selected').html());
        $('.sel_mask').find('img').attr('src','arrow_down.png');
    })
    $('.sel').blur(function () {      //什么也不选恢复箭头方向
        $('.sel_mask').find('img').attr('src','arrow_down.png');
    })
    $('.sel').click(function(){     // 点击后更改箭头方向
        $('.sel_mask').find('img').attr('src','arrow_up.png');
    })
})
</script>
<style>
div.left_up{
    position:relative;
    width:260px;
    height:400px;
    top:0;
    left:0;
}
div.left_down{
    position:relative;
    width:260px;
    height:400px;
    top:0;
    left:0;
}
div.up_t{
    padding-top:10px;
    position:relative;
    width:260px;
    height:50px;
    top:0;
    left:0;
    background-color:rgba(200,200,200,1);
    border-radius:15px 15px 0 0;
}
div.up_c{
    position:relative;
    width:260px;
    height:340px;
    top:0;
    left:0;
}
div.down_t{
    padding-top:10px;
    position:relative;
    width:260px;
    height:50px;
    top:0;
    left:0;
    background-color:rgba(200,200,200,1);
    border-radius:15px 15px 0 0;
}
div.down_c{
    padding:0 10px;
    position:relative;
    width:260px;
    height:340px;
    top:0;
    left:0;
}
span.t{
    font-family:"microsoft yahei";
    font-size:25px;
    font-weight:bold;
    color:#444;
}
img.touxiang{
    width:150px;
    height:150px;
    border-radius:50%;
}
span.a{
    font-family:"microsoft yahei";
    font-size:15px;
    font-weight:bold;
    color:#555;
    text-decoration:none;
}
span.aa{
    font-family:"microsoft yahei";
    font-size:20px;
    font-weight:bold;
    color:#555;
    text-decoration:none;
}
div.lup_t{
    padding-top:10px;
    position:relative;
    width:260px;
    height:50px;
    top:0;
    left:0;
    background-color:rgba(200,200,200,1);
    border-radius:15px 15px 0 0;
}
div.lup_c{
    padding:90px;
    position:relative;
    width:260px;
    height:560px;
    top:0;
    left:0;
}
div.cld{
    position:relative;
    top:20px;
    left:100px;
    width: 460px;
    height: 360px;
    background:rgba(100,100,100,1);
    box-shadow: 0px 1px 1px rgba(0,0,0,.1);
    border-radius:15px;
}
div.test{
    position:relative;
    top:35px;
    left:100px;
    width: 460px;
    height: 360px;
    border-radius:15px;
    border:2px dashed #000;
}
div.test_t{
    position:relative;
    top:0;
    left:0;
    width:460px;
    height:40px;
    background:rgba(150,150,150,1);
    box-shadow: 0px 1px 1px rgba(0,0,0,.1);
    border-radius:15px 15px 0 0;
}
div.test_c{
    padding-left:150px;
    position:relative;
    top:0;
    left:0;
    width:310px;
    height:320px;
    background:rgba(220,220,220,1);
    box-shadow: 0px 1px 1px rgba(0,0,0,.1);
    border-radius:0 0 15px 15px;
}
input.test{
    width:80px;
    height:30px;
}
div.func1{
  display:none;
  z-index: 1;
  position:fixed;
  left:500px;
  top:140px;
  width: 600px;
  height:120px;
  background-color:rgba(224,255,255,1);
  border-radius:10px;
  border:1px dashed #000;
}
div.func2{
  display:none;
  z-index: 1;
  position:fixed;
  left:500px;
  top:280px;
  width: 500px;
  height:300px;
  background-color:rgba(224,255,255,1);
  border-radius:10px;
  border:1px dashed #000;
}
div.qnm{
  position:fixed;
  left:545px;
  top:342px;
  width: 420px;
  height:250px;
}
div.dadada{
width:500px;
height:800px;
position:relative;
left:152px;
top:50px;
}
div.fanhui{
width:40px;
height:10px;
position:relative;
left:60px;
top:-20px;
}
</style>
</head>
<body>
<div class="head">
    <div class="wel">
        <span class="wel">欢迎您！<%=session.getAttribute("names") %></span>
    </div>
    <div class="head_right">
         <span class="wel">切换风格： </span>
         <div class="up">
         <a href="javascript:void(0)"  class="sel_mask"><span>务实稳重</span>
         <select  class="sel">
             <option>务实稳重</option>
             <option>温馨宁静</option>
             <option>青春校园</option>
             <option>活力四射</option>
         </select>
</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <a class="feng"  href="../Cancellation" >退出</a>
         </div>
    </div>
</div>
<div class="body">
    <div class="left">
        <div class="lup_t">
        <span class="t"><center>常用功能</center></span>
        </div>
        <div class="lup_c">
            <span class="aa"><a onclick="openModal1();">天气预报</a></span>
            <div class="func1" id="myModal1">
                <span onclick="closeModal1()">&nbsp;&times;</span>
                <iframe scrolling="no" src="https://tianqiapi.com/api.php?style=tt&skin=pitaya" frameborder="0" width="590" height="98" allowtransparency="true"></iframe>
            </div>
            <br/><br/><br/><br/>
            <span class="aa"><a onclick="openModal2();">&nbsp;课程表</a></span>
            <div class="func2" id="myModal2">
                <span onclick="closeModal2()">&nbsp;&times;</span>
                <br/><br/><br/>
                <div class="qnm">
                <table border="2" cellspacing="1" cellpadding="25">
<tr>
<td align="center"></td>
<td align="center">星期一</td>
<td align="center">星期二</td>
<td align="center">星期三</td>
<td align="center">星期四</td>
<td align="center">星期五</td>
<td align="center">星期六</td>
<td align="center">星期天</td>
</tr>
<tr>
<td align="center">第一节</td>
<td align="center"></td>
<td align="center"></td>
<td align="center"></td>
<td align="center"></td>
<td align="center"></td>
<td align="center"></td>
<td align="center"></td>
</tr>
<tr>
<td align="center">第二节</td>
<td align="center"></td>
<td align="center"></td>
<td align="center"></td>
<td align="center"></td>
<td align="center"></td>
<td align="center"></td>
<td align="center"></td>
</tr>
<tr>
<td align="center">第三节</td>
<td align="center"></td>
<td align="center"></td>
<td align="center"></td>
<td align="center"></td>
<td align="center"></td>
<td align="center"></td>
<td align="center"></td>
</tr>
<tr>
<td align="center">第四节</td>
<td align="center"></td>
<td align="center"></td>
<td align="center"></td>
<td align="center"></td>
<td align="center"></td>
<td align="center"></td>
<td align="center"></td>
</tr>
<tr>
<td align="center">第五节</td>
<td align="center"></td>
<td align="center"></td>
<td align="center"></td>
<td align="center"></td>
<td align="center"></td>
<td align="center"></td>
<td align="center"></td>
</tr>
<tr>
<td align="center">第六节</td>
<td align="center"></td>
<td align="center"></td>
<td align="center"></td>
<td align="center"></td>
<td align="center"></td>
<td align="center"></td>
<td align="center"></td>
</tr>
<tr>
<td align="center">第七节</td>
<td align="center"></td>
<td align="center"></td>
<td align="center"></td>
<td align="center"></td>
<td align="center"></td>
<td align="center"></td>
<td align="center"></td>
</tr>
                </table>
                </div>
            </div>
            <br/><br/><br/><br/>
            <span class="aa">待添加。。</span>
        </div>
    </div>
    <div class="main">
    <div class="dadada">
<form action="../edit_information"  method="post">
<table border="2" cellspacing="1" cellpadding="15" >
<tr>
<td align="center">学&nbsp;&nbsp;号：</td>
<td align="center"><%=session.getAttribute("sID") %></td>
</tr>
<tr>
<td align="center">姓&nbsp;&nbsp;名：</td>
<td align="center"><%=session.getAttribute("name") %></td>
</tr>
<tr>
<td align="center">性&nbsp;&nbsp;别：</td>
<td align="center"><%=session.getAttribute("sex") %></td>
</tr>
<tr>
<td align="center">班&nbsp;&nbsp;级：</td>
<td align="center"><%=session.getAttribute("classe") %></td>
</tr>
<tr>
<td align="center">身&nbsp;&nbsp;份：</td>
<td align="center"><%=session.getAttribute("identity") %></td>
</tr>
<tr>
<td align="center">单&nbsp;&nbsp;位：</td>
<td align="center"><%=session.getAttribute("loc") %></td>
</tr>
<tr>
<td align="center">身份证号：</td>
<td align="center"><%=session.getAttribute("ID") %></td>
</tr>
<tr>
<td align="center">手机/电话：</td>
<td align="center"><input type="text" style="width:200px; height:20px " name="phone" /></td>
</tr>
<tr>
<td align="center">QQ：</td>
<td align="center"><input type="text" style="width:200px; height:20px " name="QQ" /></td>
</tr>
<tr>
<td align="center">邮&nbsp;&nbsp;箱：</td>
<td align="center"><input type="text" style="width:200px; height:20px " name="email" /></td>
</tr>
<tr>
<td align="center">爱&nbsp;&nbsp;好：</td>
<td align="center"><input type="text" style="width:200px; height:20px " name="hobby" /></td>
</tr>
<tr>
<td align="center">签&nbsp;&nbsp;名：</td>
<td align="center"><input type="text" style="width:200px; height:20px " name="tip" /></td>
</tr>
<tr>
<td align="center" colspan="2">
<input type="submit" value="确  定">
<div class="fanhui"><a href="set_information.jsp">返回</a></div></td>
</tr>
</table>
    </div>
    </div>
    <div class="right">
        <div class="left_up">
        <div class="up_t">
            <span class="t"><center>设&nbsp;&nbsp;&nbsp;&nbsp;置</center></span>
        </div>
        <div class="up_c">
        <br/>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <img class="touxiang" src="../images/touxiang1.jpg"/><br/><br/>
            <a href="../set_information"><center><span class="a">个人信息</span></center></a><br/><br/>
            <a href="change_password.jsp"><center><span class="a">修改密码</span></center></a><br/><br/>
            <a href="../Cancellation"><center><span class="a">注&nbsp;&nbsp;销</span></center></a>
        </div>
    </div>
    <div class="left_down">
        <div class="down_t">
            <span class="t"><center>常用链接</center></span>
        </div>
        <div class="down_c">
            <br/><br/>
            <a href="http://www.upc.edu.cn/"><span class="a">中国石油大学&nbsp;&nbsp;&nbsp;&nbsp;upc.edu.cn</span></a><br/><br/>
            <a href="https://dsa.cs.tsinghua.edu.cn/oj/"><span class="a">清华OJ&nbsp;&nbsp;&nbsp;&nbsp;dsa.cs.tsinghua.edu.cn</span></a><br/><br/>
            <a href="http://211.87.179.11/moodle/login/index.php"><span class="a">数据结构练习&nbsp;&nbsp;&nbsp;&nbsp;211.87.179.11</span></a><br/><br/>
            <a href="https://www.baidu.com"><span class="a">百度搜索&nbsp;&nbsp;&nbsp;&nbsp;www.baidu.com</span></a>
        </div>
    </div>
    </div>
</div>
    <script > 
    function openModal1() {
        document.getElementById('myModal1').style.display = "block";
    }
    function closeModal1() {
        document.getElementById('myModal1').style.display = "none";
    }
    function openModal2() {
        document.getElementById('myModal2').style.display = "block";
    }
    function closeModal2() {
        document.getElementById('myModal2').style.display = "none";
    }
    </script>
</body>
</html>
