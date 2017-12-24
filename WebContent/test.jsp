<%@page import="javax.xml.ws.Response"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String name=request.getParameter("username");
		System.out.println(name);
		request.setCharacterEncoding("UTF-8");
		String msg=null;
		if(name.equals("1")){
			msg="用户名已被占用";
		}else{
			msg="用户名可用";
		}
		response.getWriter().println(msg);  
	%>
</body>
</html>