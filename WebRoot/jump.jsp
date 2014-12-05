<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<% 

        String basePath = "";
        basePath = basePath + request.getScheme() + "://" + request.getServerName();
        basePath = basePath + ":" + request.getServerPort();
        basePath = basePath + request.getContextPath();

%>
<%
    String info = (String)request.getAttribute("errorInfo");
	
 %>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>跳转页面</title>
</head>

<body background-color="#gray">
	<div height="400" align="center">
		<p>&nbsp;</p>
		<p>&nbsp;</p>
		<p>&nbsp;</p>
		<input type="image" src="<%=basePath%>/image/smile.jpg"/>
		<font size="100px" color="#00FF00" style="幼圆"><b>恭喜您注册成功</b><font/>
	</div>
	<div align="center">&nbsp; 
		<font color="#FF0000" size="6px"><br />
		<span id="leaveTime">3</span>秒后跳转到登陆界面
		<br/>
		<a href="<%=basePath%>/Login.jsp">立即登录</a></font>
	</div>
</body>
</html>
<script>
  var leaveTime = 3;
  window.setInterval(updateTime,1000);
  function updateTime(){
      leaveTime--;
	  document.getElementById("leaveTime").innerHTML = leaveTime;
	  if(leaveTime == 0){   
	      window.location = "<%=basePath%>/Login.jsp";
	  }
	  
  
  }
</script>