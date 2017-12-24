<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>删除新闻</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
		String who=request.getParameter("sender");
	%>
	<jsp:useBean id="news" class="database.News"/>
	<jsp:setProperty property="*" name="news"/>
	<%
		int result=news.refuseNews();
		String msg="拒收失败,点击确定跳转稿件列表页";
		if(result==1){
			msg="拒收成功,点击确定跳转稿件列表页";
		}
	%>
	<script type="text/javascript">window.alert('<%=msg%>');</script>
	<%
	if(who.equals("admin")){
		response.setHeader("Refresh", "1;url=showall.jsp");
	}else if(who.equals("writer")){
		response.setHeader("Refresh", "1;url=showall.jsp");
	}else if(who.equals("checker")){
		response.setHeader("Refresh", "1;url=showallchecker.jsp");
	}
	%>
</body>
</html>