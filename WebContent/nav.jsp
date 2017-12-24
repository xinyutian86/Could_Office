<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=emulateIE7" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="css/style.css" />
<link rel="stylesheet" href="css/zTreeStyle/zTreeStyle.css" type="text/css">
<link rel="stylesheet" type="text/css" href="css/skin_/nav.css" />
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/global.js"></script>
<title>底部内容页</title>
</head>

<body>
<%
	String gp=(String)session.getAttribute("group");
	String nickname=(String)session.getAttribute("nickname");
	String login_name=(String)session.getAttribute("user");
%>
<div id="container">
	<div id="bd">
    	<div class="sidebar">
        	<div class="sidebar-bg"></div>
            <i class="sidebar-hide"></i>
            <h2><a href="javascript:;"><i class="h2-icon" title="切换到树型结构"></i><span>安全管理</span></a></h2>
            <ul class="nav">
            	<%
            		if(gp.equals("writer")){
            	%>
                <li class="nav-li current">
                	<a href="javascript:;" class="ue-clear"><i class="nav-ivon"></i><span class="nav-text">稿件管理</span></a>
                    <ul class="subnav">
                    	<li class="subnav-li current" href="form.jsp" data-id="8"><a href="javascript:;" class="ue-clear"><i class="subnav-icon"></i><span class="subnav-text">撰写新稿件</span></a></li>
                        <li class="subnav-li" href="showallusers.jsp?login_name=<%=login_name%>" data-id="9"><a href="javascript:;" class="ue-clear"><i class="subnav-icon"></i><span class="subnav-text">查看已有稿件</span></a></li>
                        <li class="subnav-li" href="getUserstate.jsp?login_name=<%=login_name%>" data-id="10"><a href="javascript:;" class="ue-clear"><i class="subnav-icon"></i><span class="subnav-text">查看审核进度</span></a></li>
                        <!-- <li class="subnav-li" data-id="11"><a href="javascript:;" class="ue-clear"><i class="subnav-icon"></i><span class="subnav-text">自定义设置1</span></a></li> -->
                    </ul>
                </li>
                <li class="nav-li ">
                	<a href="javascript:;" class="ue-clear"><i class="nav-ivon"></i><span class="nav-text">用户信息设置</span></a>
                	<ul class="subnav">
                    	<li class="subnav-li " href="index.html" data-id="1"><a href="javascript:;" class="ue-clear"><i class="subnav-icon"></i><span class="subnav-text">个人首页</span></a></li>
                        <li class="subnav-li" href="UserInfo.jsp" data-id="2"><a href="javascript:;" class="ue-clear"><i class="subnav-icon"></i><span class="subnav-text">查看个人信息</span></a></li>
                        <li class="subnav-li" href="Check_Who.jsp" data-id="3"><a href="javascript:;" class="ue-clear"><i class="subnav-icon"></i><span class="subnav-text">修改个人信息</span></a></li>
                        <!-- <li class="subnav-li" data-id="4"><a href="javascript:;" class="ue-clear"><i class="subnav-icon"></i><span class="subnav-text">自定义设置2</span></a></li> -->
                    </ul>
                </li>
                <li class="nav-li">
                	<a href="javascript:;" class="ue-clear"><i class="nav-ivon"></i><span class="nav-text">工作安排</span></a>
                    <ul class="subnav">
                    	<li class="subnav-li" data-id="5" href="coming.html"><a href="javascript:;" class="ue-clear"><i class="subnav-icon"></i><span class="subnav-text">工作安排查询</span></a></li>
                        <li class="subnav-li" data-id="6" href="coming.html"><a href="javascript:;" class="ue-clear"><i class="subnav-icon"></i><span class="subnav-text">安排工作</span></a></li>
                        <!-- <li class="subnav-li" data-id="7"><a href="javascript:;" class="ue-clear"><i class="subnav-icon"></i><span class="subnav-text">类型选择1</span></a></li> -->
                    </ul>
                </li>
                <li class="nav-li last-nav-li">
                	<a href="javascript:;" class="ue-clear"><i class="nav-ivon"></i><span class="nav-text">数据管理</span></a>
                    <ul class="subnav">
                    	<li class="subnav-li" data-id="12" href="coming.html"><a href="javascript:;" class="ue-clear"><i class="subnav-icon"></i><span class="subnav-text">查看历史版本</span></a></li>
                        <li class="subnav-li" data-id="13" href="coming.html"><a href="javascript:;" class="ue-clear"><i class="subnav-icon"></i><span class="subnav-text">查看个人数据统计</span></a></li>
                        <!-- <li class="subnav-li" data-id="14"><a href="javascript:;" class="ue-clear"><i class="subnav-icon"></i><span class="subnav-text">类型选择2</span></a></li> -->
                    </ul>
                </li>
                <%}else if(gp.equals("checker")){ %>
                <li class="nav-li current">
                	<a href="javascript:;" class="ue-clear"><i class="nav-ivon"></i><span class="nav-text">稿件管理</span></a>
                    <ul class="subnav">
                    	<!-- <li class="subnav-li current" href="form.jsp" data-id="8"><a href="javascript:;" class="ue-clear"><i class="subnav-icon"></i><span class="subnav-text">撰写新稿件</span></a></li> -->
                        <li class="subnav-li" href="showallchecker.jsp" data-id="9"><a href="javascript:;" class="ue-clear"><i class="subnav-icon"></i><span class="subnav-text">审核稿件</span></a></li>
                        <li class="subnav-li" href="getstate.jsp" data-id="10"><a href="javascript:;" class="ue-clear"><i class="subnav-icon"></i><span class="subnav-text">查看审核进度</span></a></li>
                        <!-- <li class="subnav-li" data-id="11"><a href="javascript:;" class="ue-clear"><i class="subnav-icon"></i><span class="subnav-text">自定义设置1</span></a></li> -->
                    </ul>
                </li>
                <li class="nav-li ">
                	<a href="javascript:;" class="ue-clear"><i class="nav-ivon"></i><span class="nav-text">用户信息设置</span></a>
                	<ul class="subnav">
                    	<li class="subnav-li " href="index.html" data-id="1"><a href="javascript:;" class="ue-clear"><i class="subnav-icon"></i><span class="subnav-text">个人首页</span></a></li>
                        <li class="subnav-li" href="UserInfo.jsp" data-id="2"><a href="javascript:;" class="ue-clear"><i class="subnav-icon"></i><span class="subnav-text">查看个人信息</span></a></li>
                        <li class="subnav-li" href="Check_Who.jsp" data-id="3"><a href="javascript:;" class="ue-clear"><i class="subnav-icon"></i><span class="subnav-text">修改个人信息</span></a></li>
                        <!-- <li class="subnav-li" data-id="4"><a href="javascript:;" class="ue-clear"><i class="subnav-icon"></i><span class="subnav-text">自定义设置2</span></a></li> -->
                    </ul>
                </li>
                <li class="nav-li">
                	<a href="javascript:;" class="ue-clear"><i class="nav-ivon"></i><span class="nav-text">工作安排</span></a>
                    <ul class="subnav">
                    	<li class="subnav-li" data-id="5" href="coming.html"><a href="javascript:;" class="ue-clear"><i class="subnav-icon"></i><span class="subnav-text">工作安排查询</span></a></li>
                        <!-- <li class="subnav-li" data-id="6"><a href="javascript:;" class="ue-clear"><i class="subnav-icon"></i><span class="subnav-text">安排工作</span></a></li> -->
                        <!-- <li class="subnav-li" data-id="7"><a href="javascript:;" class="ue-clear"><i class="subnav-icon"></i><span class="subnav-text">类型选择1</span></a></li> -->
                    </ul>
                </li>
                <li class="nav-li last-nav-li">
                	<a href="javascript:;" class="ue-clear"><i class="nav-ivon"></i><span class="nav-text">数据管理</span></a>
                    <ul class="subnav">
                    	<!-- <li class="subnav-li" data-id="12"><a href="javascript:;" class="ue-clear"><i class="subnav-icon"></i><span class="subnav-text">查看历史版本</span></a></li> -->
                        <li class="subnav-li" data-id="13" href="coming.html"><a href="javascript:;" class="ue-clear"><i class="subnav-icon"></i><span class="subnav-text">查看个人数据统计</span></a></li>
                        <!-- <li class="subnav-li" data-id="14"><a href="javascript:;" class="ue-clear"><i class="subnav-icon"></i><span class="subnav-text">类型选择2</span></a></li> -->
                    </ul>
                </li>
                <%}else if(gp.equals("admin")){%>
                <li class="nav-li current">
                	<a href="javascript:;" class="ue-clear"><i class="nav-ivon"></i><span class="nav-text">稿件管理</span></a>
                    <ul class="subnav">
                    	<li class="subnav-li current" href="showalladmin.jsp" data-id="8"><a href="javascript:;" class="ue-clear"><i class="subnav-icon"></i><span class="subnav-text">审核稿件</span></a></li>
                        <li class="subnav-li" href="showall.jsp" data-id="9"><a href="javascript:;" class="ue-clear"><i class="subnav-icon"></i><span class="subnav-text">查看所有稿件</span></a></li>
                        <li class="subnav-li" href="getstate.jsp" data-id="10"><a href="javascript:;" class="ue-clear"><i class="subnav-icon"></i><span class="subnav-text">查看审核进度</span></a></li>
                        <!-- <li class="subnav-li" data-id="11"><a href="javascript:;" class="ue-clear"><i class="subnav-icon"></i><span class="subnav-text">自定义设置1</span></a></li> -->
                    </ul>
                </li>
                <li class="nav-li ">
                	<a href="javascript:;" class="ue-clear"><i class="nav-ivon"></i><span class="nav-text">用户信息设置</span></a>
                	<ul class="subnav">
                    	<li class="subnav-li " href="index.html" data-id="1"><a href="javascript:;" class="ue-clear"><i class="subnav-icon"></i><span class="subnav-text">个人首页</span></a></li>
                        <li class="subnav-li" href="UserInfo.jsp" data-id="2"><a href="javascript:;" class="ue-clear"><i class="subnav-icon"></i><span class="subnav-text">查看用户信息</span></a></li>
                        <li class="subnav-li" href="Check_Who.jsp" data-id="3"><a href="javascript:;" class="ue-clear"><i class="subnav-icon"></i><span class="subnav-text">修改用户信息</span></a></li>
                        <!-- <li class="subnav-li" data-id="4"><a href="javascript:;" class="ue-clear"><i class="subnav-icon"></i><span class="subnav-text">自定义设置2</span></a></li> -->
                    </ul>
                </li>
                <li class="nav-li">
                	<a href="javascript:;" class="ue-clear"><i class="nav-ivon"></i><span class="nav-text">工作安排</span></a>
                    <ul class="subnav">
                    	<li class="subnav-li" data-id="5" href="administrator.html"><a href="javascript:;" class="ue-clear"><i class="subnav-icon"></i><span class="subnav-text">工作安排查询</span></a></li>
                        <li class="subnav-li" data-id="6" href="coming.html"><a href="javascript:;" class="ue-clear"><i class="subnav-icon"></i><span class="subnav-text">安排工作</span></a></li>
                        <!-- <li class="subnav-li" data-id="7"><a href="javascript:;" class="ue-clear"><i class="subnav-icon"></i><span class="subnav-text">类型选择1</span></a></li> -->
                    </ul>
                </li>
                <li class="nav-li last-nav-li">
                	<a href="javascript:;" class="ue-clear"><i class="nav-ivon"></i><span class="nav-text">数据管理</span></a>
                    <ul class="subnav">
                    	<li class="subnav-li" data-id="12" href="coming.html"><a href="javascript:;" class="ue-clear"><i class="subnav-icon"></i><span class="subnav-text">查看历史版本</span></a></li>
                        <li class="subnav-li" data-id="13" href="coming.html"><a href="javascript:;" class="ue-clear"><i class="subnav-icon"></i><span class="subnav-text">查看个人数据统计</span></a></li>
                        <!-- <li class="subnav-li" data-id="14"><a href="javascript:;" class="ue-clear"><i class="subnav-icon"></i><span class="subnav-text">类型选择2</span></a></li> -->
                    </ul>
                </li>
                <%} %>
            </ul>
            <div class="tree-list outwindow">
            	<div class="tree ztree"></div>
            </div>
        </div>
        <div class="main">
        	<div class="title">
                <i class="sidebar-show"></i>
                <ul class="tab ue-clear">
                   
                </ul>
                <i class="tab-more"></i>
                <i class="tab-close"></i>
            </div>
            <div class="content">
            </div>
        </div>
    </div>
</div>

<div class="more-bab-list">
	<ul></ul>
    <div class="opt-panel-ml"></div>
    <div class="opt-panel-mr"></div>
    <div class="opt-panel-bc"></div>
    <div class="opt-panel-br"></div>
    <div class="opt-panel-bl"></div>
</div>
</body>
<script type="text/javascript" src="js/nav.js"></script>
<script type="text/javascript" src="js/Menu.js"></script>
<script type="text/javascript" src="js/jquery.ztree.core-3.5.js"></script>
<script type="text/javascript">
	var menu = new Menu({
		defaultSelect: $('.nav').find('li[data-id="1"]')	
	});
	
	// 左侧树结构加载
	var setting = {};

		var zNodes =[
			{ name:"新闻管理",
			   children: [
				 { name:"新闻视频管理",icon:'img/skin_/leftlist.png'},
				 { name:"新闻频道管理",icon:'img/skin_/leftlist.png'},
				 { name:"地方新闻管理",icon:'img/skin_/leftlist.png'}
			]},
			{ name:"用户信息设置", open:true,
			   children: [
				 { name:"首页", checked:true,icon:'img/skin_/leftlist.png'},
				 { name:"表单",icon:'img/skin_/leftlist.png'},
				 { name:"表格",icon:'img/skin_/leftlist.png'},
				 { name:"自定义设置",icon:'img/skin_/leftlist.png'}
			]},
			{ name:"工作安排",
			   children: [
				 { name:"工作安排",icon:'img/skin_/leftlist.png'},
				 { name:"安排管理",icon:'img/skin_/leftlist.png'},
				 { name:"类型选择",icon:'img/skin_/leftlist.png'},
				 { name:"自定义设置",icon:'img/skin_/leftlist.png'}
			]},
			{ name:"数据管理",
			   children: [
				 { name:"工作安排",icon:'img/skin_/leftlist.png'},
				 { name:"安排管理",icon:'img/skin_/leftlist.png'},
				 { name:"类型选择",icon:'img/skin_/leftlist.png'},
				 { name:"自定义设置",icon:'img/skin_/leftlist.png'}
			]}
		];

	$.fn.zTree.init($(".tree"), setting, zNodes);
	
	
	$('.sidebar h2').click(function(e) {
        $('.tree-list').toggleClass('outwindow');
		$('.nav').toggleClass('outwindow');
    });
	
	$(document).click(function(e) {
		if(!$(e.target).is('.tab-more')){
			 $('.tab-more').removeClass('active');
			 $('.more-bab-list').hide();
		}
    });
</script>
</html>
