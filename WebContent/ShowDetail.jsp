<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html lang="zh-CN">

<head>

<title>My Show</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta name="author" content="" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="format-detection" content="telephone=no">
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="css/custom.css" />
<link rel="stylesheet" type="text/css" href="css/default3.css" />
<link rel="stylesheet" type="text/css" href="css/Min.css" />
<link rel="stylesheet" type="text/css" href="css/style2.css" />
<link rel="stylesheet" type="text/css" href="css/pnotify.all.min.css" />
<link rel="stylesheet" type="text/css" href="css/buttons.css" />
<script>  
var xmlHttpReq;  
//创建一个XmlHttpRequest对象  
function createXmlHttpRequest()  
{  
    if(window.XMLHttpRequest)  
    {  
       xmlHttpReq = new XMLHttpRequest();//非IE浏览器  
    }else  
    {  
       xmlHttpReq = new ActiveXObject("Microsoft.XMLHTTP");//IE浏览器  
    }  
}  
//检测用户名是否已经被注册  
function checkUser()  
{  
var username = document.getElementById("adb").value;
/* if(username!="")  
{  
    alert(username);  
    //return false;  
}  */ 
//首先创建精灵对象  
createXmlHttpRequest();  
//指明准备状态改变时回调的函数名  
xmlHttpReq.onreadystatechange=handle;  
//尝试以异步的get方式访问某个URL  
//请求服务器端的一个servlet  
var url = "Zan.jsp?id="+username;  
xmlHttpReq.open("get",url,true);  
//向服务器发送请求  
xmlHttpReq.send(null);  
}  
//状态发生改变时回调的函数  
function handle()  
{  
//准备状态为4  
    if(xmlHttpReq.readyState==4)  
    {  
    //响应状态码为200，代表一切正常  
       if(xmlHttpReq.status==200)  
       {  
           var res = xmlHttpReq.responseText;  
           var result = document.getElementById("result");  
           var bool = res.indexOf("S");
         	//返回大于等于0的整数值，若不包含"Text"则返回"-1。
         	if(bool>0){
          	alert("点赞成功");
         	}else{
          	alert("不包含字符串");
         	}
           //result.innerHTML = "<font color=red>"+res+"</font>";  
       }  
    }  
}  
</script>  
</head>

<body>
	<div class="hs-wap-body">
		<div class="hs-wap-head">
			<img alt="" src="img/img2.jpg" class="hs-head-img">
		</div>
		<div class="hs-wap-main" style="margin-left: 8px; margin-right: 8px;">
			<div class="ylcon">
				<p class="tit">详情</p>
				<div id="messDivId">
					<jsp:useBean id="news" class="database.Music" />
					<jsp:setProperty property="id" name="news" />
			<%
				HashMap newsinfo = (HashMap) news.getSingleSong();
				if (newsinfo != null) {
			%>
			<div class="story">
						<div class="opbtn"></div>
						<p class="story_t">
							@<%=newsinfo.get("from")%></p>
						<p class="story_time"><%=newsinfo.get("date")%></p>
						<p class="story_m">
							我发表了我的作品：<a href="<%=newsinfo.get("song")%>">《<%=newsinfo.get("singer")%>》
							</a>，快来看看吧~~
						</p>
						<br />
						<div align="center">
							<input type="hidden" id="adb" value="<%=newsinfo.get("id")%>"/>
							<!-- <p id="result"></p> -->
							<a 
								class="button button-glow button-rounded button-highlight"><%=newsinfo.get("zan") %>赞</a>
							<a onclick="checkUser()"
								class="button button-glow button-rounded button-caution">点赞</a>
							<a href="<%=newsinfo.get("song")%>"
								class="button button-glow button-rounded button-royal">去看看</a>
						</div>
						<br />
						<p class="story_hf">@Who:ReCall</p>
						<p class="story_hf" id="isee">
								<textarea rows="6" style="width: 100%;"></textarea>
								<br />
								<a data-toggle="modal" data-target="#myModal" class="button button-glow button-border button-rounded button-primary">Go</a>
						</p>
					</div>
			<%
				}
			%>

				</div>
			</div>
		</div>
		<div class="hs-wap-foot">
			<div class="hs-wap-copyright">
				<div align="center">
					<hr style="height: 1px; border: red; border-top: 3px double red;" />
					<p>版权所有 © 泰山学院</p>
					<p>地址：泰安市东岳大街525号 邮编：271000</p>
				</div>
			</div>
		</div>
	</div>
	<script src="js/jquery-3.2.1.min.js"></script>
	<script
		src="https://apps.bdimg.com/libs/bootstrap/3.3.0/js/bootstrap.min.js"></script>
	<script src="https://apps.bdimg.com/libs/layer/2.0/layer.js"></script>
	<script
		src="https://apps.bdimg.com/libs/pnotify/2.0.0/pnotify.all.min.js"></script>
	<script src="/Public/Common/plugin/swiper/js/swiper.min.js"></script>
	<script src="js/min.js"></script>
</body>