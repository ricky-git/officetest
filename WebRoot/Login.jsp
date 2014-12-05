<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script language="javascript" src="js/Login.js"></script>
<%
    String basePath = "";
    basePath += request.getScheme() + "://" + request.getServerName();
    basePath += ":" + request.getServerPort();
    basePath += request.getContextPath();
%>
<link rel="stylesheet" type="text/css" href="<%=basePath%>/css/Login.css"/>
<title>登录</title>

</head>


<body>

<p>&nbsp;</p>
<p>&nbsp;</p>
    <marquee behavior="scroll" direction="right">
	<input type="image" src="<%=basePath%>/image/welcome.jpg" />
    </marquee>
<div id="null">
</div>
	
<div>
  <div id="mainbody" align="left">
	<form action="<%=basePath%>/servlet/LoginController" method="post">
	<table class="table" width="779%" border="0">
		<tr>
   	 	  <td width="40%"><div align="right">用户名:</div></td>
        	<td width="60%"><input align="left" type="text" name="username" id="username" onblur="isuserName();"/>
        	<span id="loginNamehint"></span></td> 
    	</tr>
    	<tr>
       	  <td width="40%"><div align="right">密&nbsp;&nbsp;码:</div></td>
          <td width="60%"><input align="left" type="password" name="psw" id="password" onblur="ispassWord();"/>
        	<span id="loginpassWordhint"></span></td> 
    	</tr>
		<tr>
       	  <td colspan="2"><div align="center"><input type="submit" value="立即登录" style="background-color:#9966FF; width:80px; height:21px; border:0"/></div></td>
		</tr>	
	</table>
    </form>
  </div>
</div>

</body>
</html>
