<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=emulateIE7" />
<link rel="stylesheet" type="text/css" href="css/style.css" />
<link rel="stylesheet" type="text/css" href="css/skin_/login.css" />
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/jquery.select.js"></script>
<title>动态新闻中心</title>
</head>

<body>
<%
	String name=(String)session.getAttribute("user");
%>
<div id="container">
    <div id="bd">
    	<div id="main">
        	<div class="login-box">
                <div id="logo"></div>
                <h1></h1>
                <form  name="myfrom" id="myform" method="post" action="login_check.jsp">
                <div class="input username" id="username">
                    <label for="userName">用户名</label>
                    <span></span>
                    <input type="text" id="name" name="username" value=<%=name%> readonly unselectable="on">
                </div>
                <div class="input psw" id="psw">
                    <label for="password">密&nbsp;&nbsp;&nbsp;&nbsp;码</label>
                    <span></span>
                    <input type="password" id="pass" name="password"/>
                </div>
                <div id="btn" class="loginButton">
                    <input type="submit" class="button" value="登录"  />
                </div>
                </form>
            </div>
        </div>
        <div id="ft">CopyRight&nbsp;2017</div>
    </div>
   
</div>

</body>
<script type="text/javascript">
	var height = $(window).height() > 445 ? $(window).height() : 445;
	$("#container").height(height);
	var bdheight = ($(window).height() - $('#bd').height()) / 2 - 20;
	$('#bd').css('padding-top', bdheight);
	$(window).resize(function(e) {
        var height = $(window).height() > 445 ? $(window).height() : 445;
		$("#container").height(height);
		var bdheight = ($(window).height() - $('#bd').height()) / 2 - 20;
		$('#bd').css('padding-top', bdheight);
    });
	$('select').select();
	
	/* $('.loginButton').click(function(e) {
        //document.location.href = "main.html";
		document.getElementById("myform").submit();    
	    //alert(11);
    }); */
</script>

</html>
