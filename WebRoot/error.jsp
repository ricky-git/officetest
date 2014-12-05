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
<title>无标题文档</title>
</head>

<body>
	<div height="400" align="center">
		<p>&nbsp;</p>
		<p>&nbsp;</p>
		<p>&nbsp;</p>
		<input type="image" src="/image/Loginerror.jpg"/>
	</div>
	<div align="center">
		<font color="#FF0000" size="6px"><%=info%>
		<%if(info.equals("用户名或密码输入有误")){
		%>
		<span id="leaveTime" style="color:#0033CC">3</span>秒后自动返回
		<a href="<%=basePath%>/Login.jsp">返回</a></font>
	
	<%
	}
	%>
	<%if(info.equals("注册失败")){%>
	
	<span id="leaveTime" style="color:#0033CC">3</span>秒后自动返回
		<a href="<%=basePath%>/Login.jsp">返回</a></font>
	<%}%>
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
	      window.location = "/Login.jsp";
	  }
	  
  
  }
</script>
