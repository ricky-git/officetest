<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>一扇窗讲堂主页</title>
<%
    String basePath = "";
    basePath += request.getScheme() + "://" + request.getServerName();
    basePath += ":" + request.getServerPort();
    basePath += request.getContextPath();
%>

<link href="<%=basePath%>/css/main.css" rel="stylesheet" type="text/css">

<!-–[if lt IE 9]><script src="js/html5.js "></script ><![endif]–- > 


<script>var __adobewebfontsappname__="dreamweaver"</script>
<script src="http://use.edgefonts.net/source-sans-pro:n6:default.js" type="text/javascript"></script>

<%
      String username = (String) session.getAttribute("username");
	  String str=null;
	  
%>
</head>

<body>
<div id="wrapper">
    <header id="top">
    	<div id="title">
		<div align="right">
		 <%
	   if(username == null||username.equals("")){
	         
	 %>
	    请<a href="<%=basePath%>/Login.jsp" style="text-decoration:none"><font size="2" face="宋体" color="#336699">登录</font></a>
	    <a href="<%=basePath%>/Regist.jsp" style="text-decoration:none"><font size="2" face="宋体" color="#336699">,免费注册</font></a>		 
	    <%
	 }
	  else{
	        str=(String) session.getAttribute("username");
	  %>
	  当前用户：<%=username%>,
	  <a href="<%=basePath%>/servlet/LoginController?flag=true" style="text-decoration:none">退出</a>
	  <%
	       }
	  %>
	  </div>
    	
		<p>&nbsp;</p>
		<p>&nbsp;</p>
		<p>&nbsp;</p>
		<p>&nbsp;</p>
		<h1><font color="#000000">一扇窗讲堂</font></h1>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        </div>
        <nav id="mainnav">
            <ul>
                <li><a href="<%=basePath%>/index.jsp" class="thispage">主页</a></li>
                <li><a href="<%=basePath%>/testPaper.jsp">历年真题</a></li>
                <li><a href="<%=basePath%>/schedule.jsp">面授课程安排</a></li>
                <li><a href="<%=basePath%>/charge.jsp">报名流程</a></li>
                <li><a href="<%=basePath%>/vadiocourse.jsp">网络课程</a></li>
      <li><a href="<%=basePath%>/instruction.jsp">考试政策</a></li>         
       <li><a href="<%=basePath%>/about.jsp">关于我们</a></li>
            </ul>
        </nav>
    </header>
    <div id="hero">
        <article>
            <h2>窗，聪也；
于内窥外，为聪明也。</h2>
            <p></p>
        </article>
      </div>
    <article id="main">
        <h2>帮你打开进入公务员队伍的一扇窗</h2>
        <p>
每当巡视在公务员笔试的考场，<br />
每当坐在公务员面试考官的桌旁，<br />
每当看到一张张年轻、充满朝气的脸孔，<br />
他们的眼睛里有着对职业选择的坚毅、自信，<br />
也有着对未来的未知、彷徨。<br />
我总是用微笑鼓励他们，<br />
就像对待自己的闺女和儿郎。</p>

<p>每当职位的“前三甲”进入面试名单仓，<br />
未进者首轮竞争已把失利的滋味尝。<br />
看到考生们难过的愁模样儿，<br />
真想与他们共同分析失败的原因、<br />
掌握正确的方法、建立心理的健康，<br />
愿他们再接再厉、让心随着理想飞扬！</p>

<p>每当看到网上线上铺天盖地的广告上，<br />
引你诱你参加所谓的培训就像打赌压上一庄。<br />
我经常思考、常常冥想：<br />
作为一名曾经的人事考试工作者、<br />
一名曾经的国家公务员考官，<br />
我应该为社会、为考生、为孩子们帮什么忙？</p>

<p>每当这些许的社会责任感在胸中激荡，<br />
为自己还有的激情感到无比的欢畅！<br />
我将“以正视听”为己任，<br />
告诉考生们一个真实的考场。<br />
来吧，孩子们，<br />
来吧，考生，<br />
我愿意帮你们打开进入公务员队伍的一扇窗。</p>
  
    </article>
    <aside id="sidebar">
        <h2>讲堂的宗旨</h2>
        <p>一扇窗讲堂，是一个致力于帮助广大参加公务员考试的人群，提升竞争能力的机构。成立于2014年5月。一扇窗讲堂汇聚了一批曾经在公务员队伍里担任领导、组织公务员考试、参与命题、承担面试考官、参加阅卷等工作的国家公职人员。</p>
    <p>一扇窗讲堂的宗旨：“帮助考生打开进入公务员队伍的一扇窗。”</p>
<p>由于机构内人员的职业经历和人文精神，不愿意看到考生在社会上被所谓的培训机构欺骗，我们决定拉旗公示天下，用科学的精神，告诉你一个真实的公务员考试路径。</p>
<p>愿景：让科学流行起来</p>
<p>价值观：严谨有容，独立客观</p>
        
    </aside>
    <footer>
        <address>
通讯地址：武昌八一路银海华庭4栋A座306
联系电话：027-87319661   15971430406
</address>
        <p>&copy; Copyright 2014 一扇窗讲堂</p>
    </footer>
</div>
</body>
</html>
