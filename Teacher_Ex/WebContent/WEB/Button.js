function Query() {
	window.open("QueryMethod.jsp");
}
function Add() {
	window.location.href="Add.jsp";
}
function Del() {
	if(confirm("确认删除？"))
		{
	window.location.href="../Del?selected="+sessionStorage.getItem("selected");
		 
		    
		}
}
function Update() {
	
	window.location.href="UpdateMethod.jsp?selected="+sessionStorage.getItem("selected");
	
}