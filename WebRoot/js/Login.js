// JavaScript Document
function isuserName(){
	 var loginName=document.getElementById("username").value;
     if(loginName==''){
		document.getElementById("loginNamehint").innerHTML="<img src='image/error.jpg'/>用户名不能为空";
		document.getElementById("loginNamehint").className="redFont";
//		document.getElementById("loginNameImage").src="../image/bt_del.gif";
//		document.getElementById("loginNameImage").style.display="block";
//		document.getElementById("linkMan").focus();
	 }
     else{  
    	
    	document.getElementById("loginNamehint").innerHTML="<img src='image/ok.jpg'/>用户名正确";
		document.getElementById("loginNamehint").className="greenFont";
//		document.getElementById("loginNameImage").src="../image/bt_yes.gif";
//		document.getElementById("loginNameImage").style.display="block";
		//document.getElementById("loginName").className="";	 
	 }
} 
function ispassWord(){  
	var loginpassWord=document.getElementById("password").value;
    if(loginpassWord==''){
    	document.getElementById("loginpassWordhint").innerHTML="<img src='image/error.jpg'/>密码不能为空";
		document.getElementById("loginpassWordhint").className="redFont";
//		document.getElementById("loginpassWordImage").src="../image/bt_del.gif";
//		document.getElementById("loginpassWordImage").style.display="block";
//		document.getElementById("linkMan").focus();
	}
    else{   
    	document.getElementById("loginpassWordhint").innerHTML="<img src='image/ok.jpg'/>密码正确";
		document.getElementById("loginpassWordhint").className="greenFont";
//		document.getElementById("loginpassWordImage").src="../image/bt_yes.gif";
//		document.getElementById("loginpassWordImage").style.display="block";
		//document.getElementById("loginpassWord").className="";		 
	}
} 
