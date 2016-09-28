var xmlhttp;

function showUser(str){
	xmlhttp=GetXmlHttpRequest();
	if(xmlhttp==null){
		alert("Browser doesn't support HTTP request");
		return;
		}
	var url="getuser.jsp?q="+str;
	
	xmlhttp.onreadystatechange=stateChanged;
	xmlhttp.open("GET",url,true);
	xmlhttp.send(null);
	}

function stateChanged(){
	if(xmlhttp.readyState==4){
		document.getElementById("txtHint").innerHTML=xmlhttp.responseText;
	}
}
		
function GetXmlHttpRequest(){
	if(window.XMLHttpRequest){
		return new XMLHttpRequest();
	}
	if(window.ActiveXObject){
		return new ActiveXObject("Microsoft.XMLHTTP");
	}
	return null;
}