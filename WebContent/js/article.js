
function getXHR(){	
	var xmlhttp;
	if (window.XMLHttpRequest) {
		xmlhttp = new XMLHttpRequest();
	} else {
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	return xmlhttp;	
}

function love_article(article_id){
	var url = "/Blog/AriStarServlet?id="+article_id ;		
	var xmlhttp = getXHR();	
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			var res = xmlhttp.responseText;			
			var res = eval('(' + res + ')');			
			if (res.msg == "success") {
				document.getElementById("love").innerHTML= "&nbsp;"+ res.new_star+"&nbsp;";				
			}else{
				alert("ne sois pas fou...");
			}
		}
	}
	xmlhttp.open("POST", url, true);
	xmlhttp.send();		
}


function deletecm(component,comm_id){
	var container = component.parentNode.parentNode;
	var url = "/Blog/CMDeleServlet?id="+comm_id ;		
	var xmlhttp = getXHR();	
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			var res = xmlhttp.responseText;			
			var res = eval('(' + res + ')');			
			if(res.msg == "success"){
				var p = container.parentNode;
				p.removeChild(container);
			}			
		}	
	}
	xmlhttp.open("POST", url, true);
	xmlhttp.send();	
}

function star(component , comm_id) {
	
	var url = "/Blog/CMStarServlet?id="+comm_id ;		
	var xmlhttp = getXHR();	
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			var res = xmlhttp.responseText;			
			var res = eval('(' + res + ')');			
			if (res.msg == "success") {
	
				component.innerHTML = res.new_star;				
			}else{
				alert("ne sois pas fou...");
			}
		}
	}
	xmlhttp.open("POST", url, true);
	xmlhttp.send();	
}

function diss(component , comm_id) {
	
	var url = "/Blog/CMDissServlet?id="+comm_id;		
	var xmlhttp = getXHR();	
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			var res = xmlhttp.responseText;			
			var res = eval('(' + res + ')');			
			if (res.msg == "success") {
				component.innerHTML = res.new_diss;				
			}else{
				alert("ne sois pas fou...");
			}
		}
	}
	xmlhttp.open("POST", url, true);
	xmlhttp.send();	
}
