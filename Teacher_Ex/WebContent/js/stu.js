function msgbox(n){
    document.getElementById('insert').style.display=n?'block':'none';
}

function find(n){
    document.getElementById('find').style.display=n?'block':'none';
}

function upd(){
	window.location.href="stuupd.jsp?selected="+sessionStorage.getItem("selected");
}

function del() {
	if(confirm("确认删除？"))
		{
	window.location.href="StuDel?selected="+sessionStorage.getItem("selected");	    
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
	//curRow.style.background="blue";
	sessionStorage.setItem("selected",curRow.children[0].innerHTML);	
	}
}
