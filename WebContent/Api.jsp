<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>手机App接口</title>
</head>
<body>
	<jsp:useBean id="news" class="database.News"/>
	<table id="all">
	<tr>
        <th>标 题 </th>
        <th>作 者 </th>
        <th>日 期 </th>
    </tr>
	<%
		ArrayList newslist=(ArrayList)news.getPassNews();
		for(Object o:newslist){
			Map m=(HashMap)o;
	%>
		<tr id="table" class="admin"><td class="title"><a href="article.jsp?id=<%=m.get("id") %>" style="font-size: 25px;"><%=m.get("title")%></a></td><td class="author"><%= m.get("author") %></td>
		<td class="date"><%= m.get("date") %></td>
	<%
		}
	%>
	</table>
</body>
</html>