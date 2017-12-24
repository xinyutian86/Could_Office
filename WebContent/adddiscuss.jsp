<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>评论动态</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
	%>
	<jsp:useBean id="news" class="database.Music"/>
	<jsp:setProperty property="*" name="news"/>
	<%
		int result=news.addMusic_Dis();
		String msg="评论失败";
		if(result==1){
			
			msg="评论成功";
		}
	%>
	<br/><br/><br/><br/>
	<h1 align="center"><%=msg %></h1>
	<script type="text/javascript">window.alert('<%=msg%>');</script>
	<%
		response.setHeader("Refresh", "1;url=Myshow.jsp");
	%>
</body>
</html>