<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ page import="java.util.HashMap" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="css/style.css" />
<link rel="stylesheet" type="text/css" href="css/WdatePicker.css" />
<link rel="stylesheet" type="text/css" href="css/skin_/form.css" />
<script type="text/javascript" charset="utf-8" src="ueditor/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8" src="ueditor/ueditor.all.min.js"> </script>
    <!--建议手动加在语言，避免在ie下有时因为加载语言失败导致编辑器加载失败-->
    <!--这里加载的语言文件会覆盖你在配置项目里添加的语言类型，比如你在配置项目里配置的是英文，这里加载的中文，那最后就是中文-->
    <script type="text/javascript" charset="utf-8" src="ueditor/lang/zh-cn/zh-cn.js"></script>
<title>修改新闻信息</title>
</head>
<body>

	<jsp:useBean id="news" class="database.News"/>
	<jsp:setProperty property="*" name="news"/>
	<%
		String gp=(String)session.getAttribute("group");
		String name=(String)session.getAttribute("user");
		HashMap newsinfo=(HashMap)news.getNews();
		if(newsinfo!=null){
	%>
	<form id="myform" name="myform" method="get" action="edit_do.jsp">
	<h2 align="center">修改稿件信息</h2>
<div id="container">
	<div id="hd">
	<input type="hidden" name="id" value="<%=newsinfo.get("id")%>" >
	<input type="hidden" name="sender" value="<%=gp%>" >
	<input type="hidden" name="name" value="<%=name%>" >
    </div>
    <div id="bd">
    	<div id="main">
            <h2 class="subfild">
            	<span>基本信息</span>
            </h2>
            <div class="subfild-content base-info">
            	<div class="kv-item ue-clear">
                	<label><span class="impInfo">*</span>文章标题</label>
                	<div class="kv-item-content">
                    	<input type="text" placeholder="文章标题" name="title" value="<%=newsinfo.get("title")%>"/>
                    </div>
                    <span class="kv-item-tip">标题字数限制在35个字符</span>
                </div>
                <div class="kv-item ue-clear time">
                	<label><span class="impInfo">*</span>文章作者</label>
                	<div class="kv-item-content">
                    	<input type="text" placeholder="文章作者" name="author" value="<%=newsinfo.get("author")%>"/>
                    </div>
                    
                </div>
               
                
                <div class="kv-item ue-clear">
                	<label>是否审核</label>
                	<div class="kv-item-content">
                    	<span class="choose">
                            <span class="checkboxouter">
                                <input type="radio" name="need" />
                                <span class="radio"></span>
                            </span>
                            <span class="text">是</span>
                        </span>
                    	<span class="choose">
                            <span class="checkboxouter">
                                <input type="radio" name="need" />
                                <span class="radio"></span>
                            </span>
                            <span class="text">否</span>
                        </span>
                   
            <br/><br/><br/>
            <h2 class="subfild">
            	<span>备注资料</span>
            </h2>
            
            <div class="subfild-content remarkes-info">
            	<div class="kv-item ue-clear">
                	<label><span class="impInfo">*</span>文章内容</label>
                	
                	<div class="kv-item-content">
   						<textarea name="content" id="editor" style="width:1024px;height:700px;"><%=newsinfo.get("content")%></textarea>
                    	
                    	<script type="text/javascript" >
    					//实例化编辑器
    					//建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
   						var ue = UE.getEditor('editor');
						</script>
                    </div>
                    
                </div>
            </div>
            
            <div class="buttons">
                <input class="button" type="submit" value="确认修改" />
            </div>
            </form>
          
        </div>
    </div>
</div>
<%
		}
	%>
	

</body>
</html>