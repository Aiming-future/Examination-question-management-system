
function ma2()
{
	var pwd=document.forms[0].password.value;
	var d2=document.getElementById("d2");
	if(pwd=="" || pwd==null)
	{
	d2.innerHTML="<font color=red>密码不能为空</font>";
	}else
	{
		d2.innerHTML="";
	}
}
function openModal() {
    document.getElementById('myModal').style.display = "block";
}
function closeModal() {
    document.getElementById('myModal').style.display = "none";
}
