<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>投稿</title>
</head>
<body>
	<%
    	String name=(String)session.getAttribute("user");
		String gp=(String)session.getAttribute("group");
    %>
	<%
		request.setCharacterEncoding("UTF-8");
	%>
	<jsp:useBean id="news" class="database.Music"/>
	<jsp:setProperty property="*" name="news"/>
	<%
		int result=news.addSongs();
		String msg="提交失败,请确定信息完整";
		if(result==1){
			
			msg="提交成功,感谢你的分享";
		}
	%>
	<br/><br/><br/><br/>
	<h1 align="center"><%=msg %></h1>
	<script type="text/javascript">window.alert('<%=msg%>');</script>
	<%
		response.setHeader("Refresh", "1;url=sing.html");
	%>
</body>
</html>