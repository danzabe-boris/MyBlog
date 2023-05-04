

function getXHR(){	
	var xmlhttp;
	if (window.XMLHttpRequest) {
		xmlhttp = new XMLHttpRequest();
	} else {
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	return xmlhttp;	
}

function sendURL(url){	
	var xmlhttp = getXHR();		
	xmlhttp.onreadystatechange = function() {

	}
	xmlhttp.open("POST", url, true);
	xmlhttp.send();		
}

function findInputInClass(class_name , name){

	var inputs = document.getElementsByClassName(class_name);
	var input;		

	for(var i=0 ;i<inputs.length;i++){		
		if(inputs[i].value == name){
			input = inputs[i];
			break;
		}			
	}
	return input;	
}

function delete_article(hod , article_id){

	var recorder = hod.parentNode.parentNode.parentNode;	
	var recorder_parent = recorder.parentNode;
	recorder_parent.removeChild(recorder);

	var url = "/Blog/AdminDataServlet?op=delete_article"+"&&article_id="+article_id;
	sendURL(url);
}


function delet_sort(hod,sort){
	
	var input = findInputInClass("sort",sort);

	var recorder = input.parentNode;
	var recorder_parent = recorder.parentNode;
	recorder_parent.removeChild(recorder);

	var url = "/Blog/AdminDataServlet?op=sort_delete"+"&&sort="+sort;
	sendURL(url);	
}


var input;
var temp;
function edit_sort(hod,sort){
	
	if(hod.innerHTML == "modifier"){
	
		input = findInputInClass("sort",sort);		
		temp = input.value;					
		input.removeAttribute("disabled");			
		
		input.value="";	
		input.focus();
		input.value=temp;					
		hod.innerHTML="donjon";			
	}else{		
		hod.innerHTML="modifier";	
		input.setAttribute("disabled","disabled");
		
		var url = "/Blog/AdminDataServlet?op=sort_update"+"&&old_sort="+temp+"&&new_sort="+input.value ;		
		sendURL(url);								
	}
}



function delet_tag(hod,tag){

	var input = findInputInClass("tags",tag);	
	var recorder = input.parentNode;
	var recorder_parent = recorder.parentNode;
	recorder_parent.removeChild(recorder);
	

	var url = "/Blog/AdminDataServlet?op=tag_delete"+"&&tag="+tag;
	sendURL(url)	
}


var input_t;
var temp_t;
function edit_tag(hod,tag){
	
	if(hod.innerHTML == "modifier"){
	
		input_t = findInputInClass("tags",tag);		
		temp_t = input_t.value;					
		input_t.removeAttribute("disabled");			
		
		input_t.value="";	
		input_t.focus();
		input_t.value=temp_t;					
		hod.innerHTML="donjon";			
	}else{		

		hod.innerHTML="modifier";	
		input_t.setAttribute("disabled","disabled");
		
		var url = "/Blog/AdminDataServlet?op=tag_update"+"&&old_tag="+temp_t+"&&new_tag="+input_t.value ;		
		sendURL(url);								
	}
}