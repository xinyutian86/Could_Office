<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=0.5, maximum-scale=2.0, user-scalable=yes" />  
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录结果</title>
<style type="text/css">
			#table{
				text-align: center;
				background-color: aquamarine;
				color: black;
			}
		</style>
</head>
<body>
	<jsp:useBean id="news" class="database.Login"/>
	<jsp:setProperty property="username" name="news"/>
	<%
		HashMap userinfo=(HashMap)news.checkuser();
		if(userinfo!=null){
			String name=request.getParameter("username");
			String pass=request.getParameter("password");
			String username=(String)userinfo.get("name");
			String password=(String)userinfo.get("pass");
			String nickname=(String)userinfo.get("nickname");
			String gp=(String)userinfo.get("group");
			System.out.println(name+pass+"\n"+username+password);
			if(pass.equals(password)){
				out.println("<div class=\"login-agileits-top\" align=\"center\"><br /><br /><br /><br /><br /><br /><img src=\"images/yes.png\"/><br /><br /><br /><br /><br /><br /></div> <h1 align=\"center\">验证成功!</h1>");
				/* session.setAttribute("login", "yes");
				session.setAttribute("user", name);
				session.setAttribute("group", gp);
				session.setAttribute("nickname", nickname); */
				response.setHeader("Refresh", "1;url=Change_PassWord.jsp?user="+username);
			}else{
				out.println("<div class=\"login-agileits-top\" align=\"center\"><br /><br /><br /><br /><br /><br /><img src=\"images/no.png\"/><br /><br /><br /><br /><br /><br /></div> <h1 align=\"center\">验证失败,密码错误!</h1>");
				response.setHeader("Refresh", "1;url=Check_Who.jsp");
			}
		}else{
			out.println("<div class=\"login-agileits-top\" align=\"center\"><br /><br /><br /><br /><br /><br /><img src=\"images/no.png\"/><br /><br /><br /><br /><br /><br /></div> <h1 align=\"center\">用户不存在</h1>");
			response.setHeader("Refresh", "1;url=Check_Who.jsp");
		}
	%>
	</table>
</body>
</html>