<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>注册</title>
<link rel="stylesheet" type="text/css" href="css/Regist.css" />
<script language="javascript" src="js/Regist.js"></script>
<%
    String basePath = "";
    basePath += request.getScheme() + "://" + request.getServerName();
    basePath += ":" + request.getServerPort();
    basePath += request.getContextPath();
%>
</head>

<body>
	<p>&nbsp;</p>
	<p>&nbsp;</p>
	<marquee behavior="scroll" direction="right">
		<input type="image" src="image/welcome.jpg"/>
	</marquee>
	<p>&nbsp;</p>
    <form method="post" action="servlet/AddUser">
		<table width="949" height="304" border="0" id="table" cellspanciing="0">
			<tr>
				<td width="30%" height="18"><div align="right">*用 户 名:</div></td>
		  	  	<td width="70%" height="18">
		  	  	<input type="text" id="username" name="username" size="23" placeholder="由6位以上的字符和数字组成" onblur="isusername();" onfocus="usernameFocus();"/>
				<img id="userNameImage" src="" style="display:none;"/><span id="userNamehint"></span></td>
			</tr>
			<tr>
				<td width="30%" height="18"><div align="right">*密  &nbsp;&nbsp; 码:</div></td>
				<td width="70%" height="18">
				<input type="password" id="password" name="password" size="23"  placeholder="由六位字符或数字组成" onblur="ispassword();" onfocus="passwordFocus();"/>
				<img id="passWordImage"  src="" style="display:none;"/><span id="passWordhint"></span></td>
			</tr>
			<tr>
				<td width="30%" height="18"><div align="right">*确认密码:</div></td>
				<td width="70%" height="18">
				<input type="password" id="repassword" name="repassword" size="23" placeholder="和密码保持一致" onblur="isrepassword();" onfocus="repasswordFocus();"/>
				<img id="repassWordImage" src="" style="display:none;"/><span id="repassWordhint"></span></td>
			</tr>
			<tr>
				<td width="30%" height="18"><div align="right">*邮 &nbsp;&nbsp; 箱:</div></td>
				<td width="70%" height="18">
				<input type="text" id="email" name="email" size="23" placeholder="填写有效的邮箱地址激活账号" onblur="isemail();" onfocus="emailFocus();"/>
				<img id="EmailImage" src="" style="display:none;"/><span id="Emailhint"></span></td>
			</tr>
			<tr>
				<td width="30%" height="18"><div align="right">*手  &nbsp;&nbsp; 机:</div></td>
				<td width="70%" height="18">
				<input type="text" id="tel" name="tel" size="23" placeholder="由11位数字组成" onblur="istel();" onfocus="telFocus();"/>
				<img id="TelImage" src="" style="display:none;"/><span id="Telhint"></span></td>
			</tr>
			<tr>
				<td width="30%" height="18"><div align="right">*Q&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Q:</div></td>
				<td width="75%" height="18">
				<input type="text" id="qq" size="23" name="qq" placeholder="QQ号" onblur="isqq();" onfocus="qqFocus();"/>
				<img id="QQImage" src="" style="display:none;"/><span id="QQhint"></span></td>
			</tr>
			<tr>
				<td width="30%" height="18"><div align="right">*微  &nbsp;&nbsp; 信:</div></td>
		  	  	<td width="70%" height="18"><input type="text" id="weixin" name="weixin" size="23" placeholder="微信号" onblur="isweixin();" onfocus="weixinFocus();"/>
				<span id="WeiXinhint"></span></td>
			</tr>
			<tr>
				<td width="30%" height="18"><div align="right">地  &nbsp;&nbsp; 址:</div></td>
				<td width="70%" height="18">
				<input type="text" id="address" name="address" size="23" placeholder="填写有效的通讯地址" onblur="isaddress();" onfocus="addressFocus();"/>
				<img id="AddressImage" src="" style="display:none;"/><span id="Addresshint"></span></td>
			</tr>
			<tr>
				<td></td>
				<td><font color="#FF0000">*选项为必填项</font></td>
			</tr>
			<tr>
				<td></td>
				<td height="18">
					<input type="submit" value="注册" id="submit"/>
					<input type="reset" value="重置" id="reset"/>
				</td>
			</tr>
		</table>
    </form>
</body>
</html>
