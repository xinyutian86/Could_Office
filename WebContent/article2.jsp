<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>

<!DOCTYPE html>
<html lang="zh-CN">

<head>

<title>动态详情</title>
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
<link rel="stylesheet" type="text/css" href="css/pnotify.all.min.css" />

<script>
	var _hmt = _hmt || [];
	(function() {
		var hm = document.createElement("script");
		hm.src = "//hm.baidu.com/hm.js?3287791dc97b62ebbd595142cb090bc3";
		var s = document.getElementsByTagName("script")[0];
		s.parentNode.insertBefore(hm, s);
	})();
</script>
</head>
<!--顶部为幻灯片640*320,图标大学为55*55;-->

<body>
	<div class="hs-wap-body">
		<div class="hs-wap-head">
			<!-- bgMusic foot start -->
			<!-- bgMusic foot end -->
			<img alt="" src="img/img2.jpg" class="hs-head-img">
		</div>
		<div class="hs-wap-main" style="margin-left: 16px;margin-right: 16px;">
			<jsp:useBean id="news" class="database.News" />
			<jsp:setProperty property="id" name="news" />
			<%
				HashMap newsinfo = (HashMap) news.getSingleNews();
				if (newsinfo != null) {
			%>
			<br><h3 align="center"><%=newsinfo.get("title")%></h3><hr/>
				
					<p align="right">发布时间:<%=newsinfo.get("date")%></p>
				
						<p align="right">作者:<%=newsinfo.get("author")%></p><hr/>
				
					<article><%=newsinfo.get("content")%></article>
			<%
				}
			%>
		</div>
		<div class="hs-wap-foot">
			<div class="hs-wap-copyright">
				<div align="center">
					<hr />
					<p>版权所有 © 泰山学院</p>
					<p>地址：泰安市东岳大街525号 邮编：271000</p>
				</div>
				<!-- 	<img alt="" src="/Public/Wap/hs/img/test-3.png"> -->
			</div>
			<!-- page foot end -->

		</div>
	</div>
	<script src="js/jquery-3.2.1.min.js"></script>
	<script type="text/javascript">
		//<![CDATA[
		if (typeof jQuery == 'undefined') {
			document
					.write(unescape("%3Cscript src='js/jquery-3.2.1.min.js' type='text/javascript'%3E%3C/script%3E"));
		}
		// ]]>
	</script>
	<script
		src="https://apps.bdimg.com/libs/bootstrap/3.3.0/js/bootstrap.min.js"></script>
	<script src="https://apps.bdimg.com/libs/layer/2.0/layer.js"></script>
	<script
		src="https://apps.bdimg.com/libs/pnotify/2.0.0/pnotify.all.min.js"></script>
	<script src="/Public/Common/plugin/swiper/js/swiper.min.js"></script>
	<script src="js/min.js"></script>

	<script type="text/javascript">
		$(function() {

			$("#owl-example").hsCarousel();
		});
	</script>
</body>