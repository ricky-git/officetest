function isusername(){
	var regu = /^[a-zA-Z][a-zA-Z0-9]{5,10}$/;
	var userName=document.getElementById("username").value;
	if(!regu.test(userName)){
		document.getElementById("userNamehint").innerHTML="用户名不合法";
		document.getElementById("userNamehint").className="redFont";
		document.getElementById("userNameImage").src="images/bt_del.gif";
		document.getElementById("username").focus();
	}
	else{
	    document.getElementById("userNamehint").innerHTML="<img src='image/ok.jpg'/>";
		document.getElementById("userNamehint").className="greenFont";
		document.getElementById("userNameImage").src="images/bt_yes.gif";
		document.getElementById("username").className="";
	
	}
}
function usernameFocus(){
	document.getElementById("userNameImage").src="images/bt_edit.gif";
	document.getElementById("userNamehint").className="purpleFont";
	document.getElementById("userNamehint").innerHTML="用户名不小于6位";
}

function ispassword(){
	var regu = /^[a-zA-Z0-9]{6}$/;
	var passWord = document.getElementById("password").value;
	if(!regu.test(passWord)){
		document.getElementById("passWordhint").innerHTML="密码格式不正确";
		document.getElementById("passWordhint").className="redFont";
		document.getElementById("passWordImage").src="images/bt_del.gif";
		document.getElementById("password").focus();
	}
	else{
	    document.getElementById("passWordhint").innerHTML="<img src='image/ok.jpg'/>";
		document.getElementById("passWordhint").className="greenFont";
		document.getElementById("passWordImage").src="images/bt_yes.gif";
		document.getElementById("password").className="";
	}
}
function passwordFocus(){
	document.getElementById("passWordImage").src="images/bt_edit.gif";
	document.getElementById("passWordhint").className="purpleFont";
	document.getElementById("passWordhint").innerHTML="密码必须由数字或字母组成";
}

function isrepassword(){
	
	var repassWord = document.getElementById("repassword").value;
	var passWord = document.getElementById("password").value;
	if(repassWord != passWord){
		document.getElementById("repassWordhint").innerHTML="密码不匹配";
		document.getElementById("repassWordhint").className="redFont";
		document.getElementById("repassWordImage").src="images/bt_del.gif";
		document.getElementById("repassword").focus();
	}
	else{
	    document.getElementById("repassWordhint").innerHTML="<img src='image/ok.jpg'/>";
		document.getElementById("repassWordhint").className="greenFont";
		document.getElementById("repassWordImage").src="images/bt_yes.gif";
		document.getElementById("repassword").className="";
	}
}
function repasswordFocus(){
	document.getElementById("repassWordImage").src="images/bt_edit.gif";
	document.getElementById("repassWordhint").className="purpleFont";
	document.getElementById("repassWordhint").innerHTML="两次密码必须一致";
}

function isemail(){
	var regu = /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(\.[a-zA-Z0-9_-])+/;
	var Email = document.getElementById("email").value;
	if(!regu.test(Email)){
		document.getElementById("Emailhint").innerHTML="邮箱格式不正确";
		document.getElementById("Emailhint").className="redFont";
		document.getElementById("EmailImage").src="images/bt_del.gif";
		document.getElementById("email").focus();
	}
	else{
		document.getElementById("Emailhint").innerHTML="<img src='image/ok.jpg'/>";
		document.getElementById("Emailhint").className="greenFont";
		document.getElementById("EmailImage").src="images/bt_yes.gif";
		document.getElementById("email").className="";
	}
}
function emailFocus(){
	document.getElementById("EmailImage").src="images/bt_edit.gif";
	document.getElementById("Emailhint").className="purpleFont";
	document.getElementById("Emailhint").innerHTML="必须填写正确邮箱";
}

function istel(){
	var regu = /^1[3|4|5|8][0-9]\d{4,8}$/;
	var Tel = document.getElementById("tel").value;
	if(!regu.test(Tel)){
		document.getElementById("Telhint").innerHTML="手机号不正确";
		document.getElementById("Telhint").className="redFont";
		document.getElementById("TelImage").src="images/bt_del.gif";
		document.getElementById("tel").focus();
	}
	else{
		document.getElementById("Telhint").innerHTML="<img src='image/ok.jpg'/>";
		document.getElementById("Telhint").className="greenFont";
		document.getElementById("TelImage").src="images/bt_yes.gif";
		document.getElementById("tel").className="";
	}
}
function telFocus(){
	document.getElementById("TelImage").src="images/bt_edit.gif";
	document.getElementById("Telhint").className="purpleFont";
	document.getElementById("Telhint").innerHTML="必须填写正确手机号码";
}

function isqq(){
	var regu = /^\s*[.0-9]{5,11}\s*$/;
	var QQ = document.getElementById("qq").value;
	if(!regu.test(QQ)){
		document.getElementById("QQhint").innerHTML="QQ号不正确";
		document.getElementById("QQhint").className="redFont";
		document.getElementById("QQImage").src="images/bt_del.gif";
		document.getElementById("qq").focus();
	}
	else{
		document.getElementById("QQhint").innerHTML="<img src='image/ok.jpg'/>";
		document.getElementById("QQhint").className="greenFont";
		document.getElementById("QQImage").src="images/bt_yes.gif";
		document.getElementById("qq").className="";
	}
}
function qqFocus(){
	document.getElementById("QQImage").src="images/bt_edit.gif";
	document.getElementById("QQhint").className="purpleFont";
	document.getElementById("QQhint").innerHTML="必须填写正确QQ号码";
}

function isweixin(){
	var regu = /^\s*[.0-9]{5,11}\s*$/;
	var WeiXin = document.getElementById("weixin").value;
	if(!regu.test(WeiXin)){
		document.getElementById("WeiXinhint").innerHTML="微信号不正确";
		document.getElementById("WeiXinhint").className="redFont";
		document.getElementById("WeiXinImage").src="images/bt_del.gif";
		document.getElementById("weixin").focus();
	}
	else{
		document.getElementById("WeiXinhint").innerHTML="<img src='image/ok.jpg'/>";
		document.getElementById("WeiXinhint").className="greenFont";
		//document.getElementById("WeiXinImage").src="images/bt_yes.gif";
		document.getElementById("weixin").className="";
	}
}
function weixinFocus(){
	document.getElementById("WeiXinImage").src="images/bt_edit.gif";
	document.getElementById("WeiXinhint").className="purpleFont";
	document.getElementById("WeiXinhint").innerHTML="必须填写正确微信号码";
}

function isaddress(){
	var regu = /^(?=.*?[\u4E00-\u9FA5])[\d\u4E00-\u9FA5]+$/;
	var Address = document.getElementById("address").value;
	if(!regu.test(Address)){
		document.getElementById("Addresshint").innerHTML="地址格式不正确";
		document.getElementById("Addresshint").className="redFont";
		document.getElementById("AddressImage").src="images/bt_del.gif";
		document.getElementById("address").focus();
	}
	else{
		document.getElementById("Addresshint").innerHTML="<img src='image/ok.jpg'/>";
		document.getElementById("Addresshint").className="greenFont";
		document.getElementById("AddressImage").src="images/bt_yes.gif";
		document.getElementById("address").className="";
	}
}
function addressFocus(){
	document.getElementById("AddressImage").src="images/bt_edit.gif";
	document.getElementById("Addresshint").className="purpleFont";
	document.getElementById("Addresshint").innerHTML="必须填写有效的地址";
}