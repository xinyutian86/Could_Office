<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>

<!DOCTYPE html>
<html lang="zh-CN">

<head>

<title>工作动态</title>
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

<link type="text/css" href="css4/system.css" rel="stylesheet" />
<link type="text/css" href="/_upload/site/1/style/1/1.css"
	rel="stylesheet" />
<link type="text/css" href="/_upload/site/00/05/5/style/13/13.css"
	rel="stylesheet" />
<link type="text/css" href="css4/simplenews.css" rel="stylesheet" />
<link type="text/css" href="css4/datepicker.css" rel="stylesheet" />
<link type="text/css" href="css4/sudyNav.css" rel="stylesheet" />

<script language="javascript" src="js2/jquery.min.js" sudy-wp-context=""
	sudy-wp-siteId="5"></script>
<script language="javascript" src="js2/jquery.sudy.wp.visitcount.js"></script>
<script type="text/javascript"
	src="js2/_portletPlugs/datepicker/js/jquery.datepicker.js"></script>
<script type="text/javascript"
	src="js2/_portletPlugs/datepicker/js/datepicker_lang_HK.js"></script>
<script type="text/javascript"
	src="js2/_portletPlugs/sudyNavi/jquery.sudyNav.js"></script>
<script type="text/javascript" src="js2/extends.js"></script>
<link rel="stylesheet" type="text/css" href="css4/swiper.min.css">
<link href="css4/style.css" rel="stylesheet">

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
	<link custom="self" rel="stylesheet" type="text/css"
		href="css4/swiper.min.css">
	<link custom="self" href="css4/style.css" rel="stylesheet">
	<div class="hs-wap-body">
		<div class="hs-wap-head">
			<!-- bgMusic foot start -->
			<!-- bgMusic foot end -->
			<img alt="" src="img/img2.jpg" class="hs-head-img">
		</div>
		<div class="hs-wap-main">
			<div class="wrapper" id="container">
				<div class="inner clearfix">
					<div class="wp-column-menu">
						<div class="column-head" frag="面板6">
							<div class="column-anchor clearfix" frag="窗口6"
								portletmode="simpleColumnAnchor">
								<h3 class="anchor-title">
									<span class='Column_Anchor'>工作动态</span>
								</h3>
								<a class="column-switch"></a>
							</div>
						</div>
						<div class="column-body" frag="面板7">
							<div class="column-list" frag="窗口7"
								portletmode="simpleColumnList">
								<div id="wp_listcolumn_w7">

									<ul class="column-list-wrap">

									</ul>

								</div>
							</div>
						</div>
					</div>
					<div class="wp-column-news">
						<div class="column-news-box">
							<div class="column-news-con" frag="面板9">
								<div class="column-news-list clearfix" frag="窗口9"
									portletmode="simpleList">
									<div id="wp_news_w9">

										<ul class="wp_article_list">
											<jsp:useBean id="news" class="database.News" />
											<%
												ArrayList newslist = (ArrayList) news.getPassNews();
												for (Object o : newslist) {
													Map m = (HashMap) o;
											%>
											<li class="list_item i<%=m.get("id") %>">
													<div class="fields pr_fields">
														<span class='Article_Index'><%=m.get("id") %></span> <span
															class='Article_Title'> <a href='article.jsp?id=<%=m.get("id") %>'
															target='_blank' title='<%=m.get("title")%>'><%=m.get("title")%></a></span>
													</div>
													<div class="fields ex_fields">
														<span class='Article_PublishDate'><%= m.get("date") %></span>
													</div>
												</li>
											
												<%
													}
												%>
												
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
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