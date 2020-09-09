function msgbox(n){
    document.getElementById('insert').style.display=n?'block':'none';
}

function find(n){
    document.getElementById('find').style.display=n?'block':'none';
}

function upd(){
	window.location.href="upd.jsp?selected="+sessionStorage.getItem("selected");
}

function del() {
	if(confirm("确认删除？"))
		{
	window.location.href="DelTeacherServlet?selected="+sessionStorage.getItem("selected");	    
		}
}

function fan()
{
	window.location.href="manager.jsp";
	}
function getrow(obj){
   if(event.srcElement.tagName=="TD"){
   curRow=event.srcElement.parentElement;
   curRow.style.background="yellow";
   }
}

function backrow(obj){
	if(event.srcElement.tagName=="TD"){
	curRow=event.srcElement.parentElement;
	curRow.style.background="#f2f2f2";
	}
}

function selectrow(obj){
	if(event.srcElement.tagName=="TD"){
	curRow=event.srcElement.parentElement;
	//curRow.style.background="white";
	sessionStorage.setItem("selected",curRow.children[0].innerHTML);	
	}
}
