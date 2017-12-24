<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>编辑结果</title>
</head>
<body>
	<%
		String who=request.getParameter("sender");
		String name=request.getParameter("name");
		request.setCharacterEncoding("UTF-8");
	%>
	<jsp:useBean id="news" class="database.News"/>
	<jsp:setProperty property="*" name="news"/>
	<%
		int result=news.updateNews();
		String msg="修改失败,点击确定跳转稿件列表页";
		if(result==1){
			msg="修改成功,点击确定跳转稿件列表页";
		}
	%>
	<script type="text/javascript">window.alert('<%=msg%>');</script>
	<%
		if(who.equals("admin")){
			response.setHeader("Refresh", "1;url=showall.jsp");
		}else if(who.equals("writer")){
			response.setHeader("Refresh", "1;url=showallusers.jsp?login_name="+name);
		}else if(who.equals("checker")){
			response.setHeader("Refresh", "1;url=showallchecker.jsp");
		}
	%>
</body>
</html>