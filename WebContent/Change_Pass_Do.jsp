<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加新闻</title>
</head>
<body>
	<%
    	String name=(String)session.getAttribute("user");
		String gp=(String)session.getAttribute("group");
    %>
	<%
		request.setCharacterEncoding("UTF-8");
	%>
	<jsp:useBean id="news" class="database.Login"/>
	<jsp:setProperty property="*" name="news"/>
	<%
		int result=news.updatePassWord();
		String msg="修改密码失败,点击确定返回";
		if(result==1){
			msg="修改密码成功,请用新的密码登录";
			session.setAttribute("login", null);
			session.setAttribute("user", null);
			session.setAttribute("group", null);
			session.setAttribute("nickname", null);
			//response.setHeader("Refresh", "1;url=http://office.xinyutian.xyz");
		}else{
			response.setHeader("Refresh", "1;url=Change_PassWord.jsp?user="+name);
		}
	%>
	<br/><br/><br/><br/>
	<h1 align="center"><%=msg %></h1>
	<script type="text/javascript">window.alert('<%=msg%>');</script>
</body>
</html>