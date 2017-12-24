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
<style>
			* {
				margin: 0;
				padding: 0;
			}
			
			body {
				background-color: #F1F1F1;
				color: #333
			}
			
			.dn {
				display: none;
			}
			
			.go-top {
				position: fixed;
				bottom: 40px;
				right: 20px;
				width: 46px;
				z-index: 999;
			}
			
			.go-top a {
				display: block;
				width: 46px;
				height: 46px;
				margin-bottom: 10px;
				background-image: url(img/go-top.png);
			}
			
			.go-top a:last-child {
				margin-bottom: 0;
			}
			
			.go-top .go {
				background-position: 0 -150px;
			}
			
			.go-top .go:hover {
				background-position: 0 -250px;
			}
			
			.go-top .feedback {
				background-position: 0 -100px;
			}
			
			.go-top .feedback:hover {
				background-position: 0 -300px;
			}
			
			.go-top .uc-2vm {
				background-position: 0 0;
			}
			
			.go-top .uc-2vm:hover {
				background-position: 0 -350px;
			}
			
			.go-top .uc-2vm-pop {
				position: absolute;
				right: 60px;
				top: -100px;
				width: 220px;
				box-shadow: 0px 1px 4px rgba(0, 0, 0, .1);
				background: #fff;
			}
			
			.go-top .uc-2vm-pop .title-2wm {
				font-size: 14px;
				margin: 10px 20px;
			}
			
			.go-top .uc-2vm-pop .logo-2wm-box {
				position: relative;
			}
		</style>
</head>

<body>
	<div class="hs-wap-body">
		<div class="hs-wap-head">
			<img alt="" src="img/img2.jpg" class="hs-head-img">
		</div>
		<div class="hs-wap-main" style="margin-left: 8px; margin-right: 8px;">
			<div class="ylcon">
				<p class="tit">所有留言</p>
				<div id="messDivId">
					<jsp:useBean id="news" class="database.Music" />
					<%
						ArrayList newslist = (ArrayList) news.allSongs();
						for (Object o : newslist) {
							Map m = (HashMap) o;
					%>
					<div class="story">
						<div class="opbtn"></div>
						<p class="story_t">
							@<%=m.get("from")%></p>
						<p class="story_time"><%=m.get("date")%></p>
						<p class="story_m">
							我发表了我的作品：<a href="<%=m.get("song")%>">《<%=m.get("singer")%>》
							</a>，快来看看吧~~
						</p>
						<br />
						<div align="right">
							
							<a href="ShowDetail.jsp?id=<%=m.get("id") %>"
								class="button button-glow button-rounded button-royal">查看详情</a>
						</div>
						<br />
						<p class="story_hf">@Who:ReCall</p>
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
	<div class="go-top dn" id="go-top">
			<!--<a href="javascript:;" class="uc-2vm"></a>-->
			<!--<div class="uc-2vm-pop dn">
				<h2 class="title-2wm">用微信扫一扫</h2>
				<div class="logo-2wm-box">
					<img src="http://demo.lanrenzhijia.com/2015/nav0128/images/weixin.jpg" alt="懒人之家二维码" width="220" height="220">
				</div>
			</div>-->
			<a href="sing.html" target="_blank" class="feedback"></a>
			<a href="javascript:;" class="go"></a>
		</div>
		<script src="http://www.lanrenzhijia.com/ajaxjs/jquery.min.js"></script>
		<script>
			$(function() {
				$(window).on('scroll', function() {
					var st = $(document).scrollTop();
					if(st > 0) {
						if($('#main-container').length != 0) {
							var w = $(window).width(),
								mw = $('#main-container').width();
							if((w - mw) / 2 > 70)
								$('#go-top').css({
									'left': (w - mw) / 2 + mw + 20
								});
							else {
								$('#go-top').css({
									'left': 'auto'
								});
							}
						}
						$('#go-top').fadeIn(function() {
							$(this).removeClass('dn');
						});
					} else {
						$('#go-top').fadeOut(function() {
							$(this).addClass('dn');
						});
					}
				});
				$('#go-top .go').on('click', function() {
					$('html,body').animate({
						'scrollTop': 0
					}, 500);
				});

				$('#go-top .uc-2vm').hover(function() {
					$('#go-top .uc-2vm-pop').removeClass('dn');
				}, function() {
					$('#go-top .uc-2vm-pop').addClass('dn');
				});
			});
		</script>
		<!-- 代码部分end -->
	<script src="js/jquery-3.2.1.min.js"></script>
	<script
		src="https://apps.bdimg.com/libs/bootstrap/3.3.0/js/bootstrap.min.js"></script>
	<script src="https://apps.bdimg.com/libs/layer/2.0/layer.js"></script>
	<script
		src="https://apps.bdimg.com/libs/pnotify/2.0.0/pnotify.all.min.js"></script>
	<script src="/Public/Common/plugin/swiper/js/swiper.min.js"></script>
	<script src="js/min.js"></script>
</body>