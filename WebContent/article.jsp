<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>

	
	
	
<!DOCTYPE html>
<html lang="zh-CN">
<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<link rel="profile" href="http://gmpg.org/xfn/11" />
	
    		
    	<!--[if lt IE 9]>
	<script src="https://weixin.bzu.edu.cn/wp/wp-content/themes/classter/js/html5.js" type="text/javascript"></script>
	<![endif]-->
	<title>动态详情</title>
<link rel='dns-prefetch' href='//s0.wp.com' />
<link rel='dns-prefetch' href='//secure.gravatar.com' />
<link rel='dns-prefetch' href='//s.w.org' />
		
		<style type="text/css">
img.wp-smiley,
img.emoji {
	display: inline !important;
	border: none !important;
	box-shadow: none !important;
	height: 1em !important;
	width: 1em !important;
	margin: 0 .07em !important;
	vertical-align: -0.1em !important;
	background: none !important;
	padding: 0 !important;
}
</style>
<link rel='stylesheet' id='jquery_reject-style-css'  href='https://weixin.bzu.edu.cn/wp/wp-content/themes/classter/js/jreject/css/jquery.reject.css' type='text/css' media='all' />
<link rel='stylesheet' id='fontello-css'  href='https://weixin.bzu.edu.cn/wp/wp-content/themes/classter/css/fontello/css/fontello.css' type='text/css' media='all' />
<link rel='stylesheet' id='animation-css'  href='https://weixin.bzu.edu.cn/wp/wp-content/themes/classter/css/fontello/css/animation.css' type='text/css' media='all' />
<link rel='stylesheet' id='main-style-css'  href='https://weixin.bzu.edu.cn/wp/wp-content/themes/classter/style.css' type='text/css' media='all' />
<link rel='stylesheet' id='messages-style-css'  href='https://weixin.bzu.edu.cn/wp/wp-content/themes/classter/js/messages/_messages.css' type='text/css' media='all' />
<link rel='stylesheet' id='shortcodes-css'  href='https://weixin.bzu.edu.cn/wp/wp-content/themes/classter/shortcodes/shortcodes.css' type='text/css' media='all' />
<link rel='stylesheet' id='theme-skin-css'  href='https://weixin.bzu.edu.cn/wp/wp-content/themes/classter/skins/general/general.css' type='text/css' media='all' />
<style>

/*body {
    width: 600px;
    margin: 40px auto;
    font-family: 'trebuchet MS', 'Lucida sans', Arial;
    font-size: 14px;
    color: #444;
}*/

table {
    *border-collapse: collapse; /* IE7 and lower */
    border-spacing: 0;
    width: 100%;    
}

.bordered {
    border: solid #ccc 1px;
    -moz-border-radius: 6px;
    -webkit-border-radius: 6px;
    border-radius: 6px;
    -webkit-box-shadow: 0 1px 1px #ccc; 
    -moz-box-shadow: 0 1px 1px #ccc; 
    box-shadow: 0 1px 1px #ccc;         
}

.bordered tr:hover {
    background: #fbf8e9;
    -o-transition: all 0.1s ease-in-out;
    -webkit-transition: all 0.1s ease-in-out;
    -moz-transition: all 0.1s ease-in-out;
    -ms-transition: all 0.1s ease-in-out;
    transition: all 0.1s ease-in-out;     
}    
    
.bordered td, .bordered th {
    border-left: 1px solid #ccc;
    border-top: 1px solid #ccc;
    padding: 10px;
    text-align: left;    
}

.bordered th {
    background-color: #dce9f9;
    background-image: -webkit-gradient(linear, left top, left bottom, from(#ebf3fc), to(#dce9f9));
    background-image: -webkit-linear-gradient(top, #ebf3fc, #dce9f9);
    background-image:    -moz-linear-gradient(top, #ebf3fc, #dce9f9);
    background-image:     -ms-linear-gradient(top, #ebf3fc, #dce9f9);
    background-image:      -o-linear-gradient(top, #ebf3fc, #dce9f9);
    background-image:         linear-gradient(top, #ebf3fc, #dce9f9);
    -webkit-box-shadow: 0 1px 0 rgba(255,255,255,.8) inset; 
    -moz-box-shadow:0 1px 0 rgba(255,255,255,.8) inset;  
    box-shadow: 0 1px 0 rgba(255,255,255,.8) inset;        
    border-top: none;
    text-shadow: 0 1px 0 rgba(255,255,255,.5); 
}

.bordered td:first-child, .bordered th:first-child {
    border-left: none;
}

.bordered th:first-child {
    -moz-border-radius: 6px 0 0 0;
    -webkit-border-radius: 6px 0 0 0;
    border-radius: 6px 0 0 0;
}

.bordered th:last-child {
    -moz-border-radius: 0 6px 0 0;
    -webkit-border-radius: 0 6px 0 0;
    border-radius: 0 6px 0 0;
}

.bordered th:only-child{
    -moz-border-radius: 6px 6px 0 0;
    -webkit-border-radius: 6px 6px 0 0;
    border-radius: 6px 6px 0 0;
}

.bordered tr:last-child td:first-child {
    -moz-border-radius: 0 0 0 6px;
    -webkit-border-radius: 0 0 0 6px;
    border-radius: 0 0 0 6px;
}

.bordered tr:last-child td:last-child {
    -moz-border-radius: 0 0 6px 0;
    -webkit-border-radius: 0 0 6px 0;
    border-radius: 0 0 6px 0;
}



/*----------------------*/

.zebra td, .zebra th {
    padding: 10px;
    border-bottom: 1px solid #f2f2f2;    
}

.zebra tbody tr:nth-child(even) {
    background: #f5f5f5;
    -webkit-box-shadow: 0 1px 0 rgba(255,255,255,.8) inset; 
    -moz-box-shadow:0 1px 0 rgba(255,255,255,.8) inset;  
    box-shadow: 0 1px 0 rgba(255,255,255,.8) inset;        
}

.zebra th {
    text-align: left;
    text-shadow: 0 1px 0 rgba(255,255,255,.5); 
    border-bottom: 1px solid #ccc;
    background-color: #eee;
    background-image: -webkit-gradient(linear, left top, left bottom, from(#f5f5f5), to(#eee));
    background-image: -webkit-linear-gradient(top, #f5f5f5, #eee);
    background-image:    -moz-linear-gradient(top, #f5f5f5, #eee);
    background-image:     -ms-linear-gradient(top, #f5f5f5, #eee);
    background-image:      -o-linear-gradient(top, #f5f5f5, #eee); 
    background-image:         linear-gradient(top, #f5f5f5, #eee);
}

.zebra th:first-child {
    -moz-border-radius: 6px 0 0 0;
    -webkit-border-radius: 6px 0 0 0;
    border-radius: 6px 0 0 0;  
}

.zebra th:last-child {
    -moz-border-radius: 0 6px 0 0;
    -webkit-border-radius: 0 6px 0 0;
    border-radius: 0 6px 0 0;
}

.zebra th:only-child{
    -moz-border-radius: 6px 6px 0 0;
    -webkit-border-radius: 6px 6px 0 0;
    border-radius: 6px 6px 0 0;
}

.zebra tfoot td {
    border-bottom: 0;
    border-top: 1px solid #fff;
    background-color: #f1f1f1;  
}

.zebra tfoot td:first-child {
    -moz-border-radius: 0 0 0 6px;
    -webkit-border-radius: 0 0 0 6px;
    border-radius: 0 0 0 6px;
}

.zebra tfoot td:last-child {
    -moz-border-radius: 0 0 6px 0;
    -webkit-border-radius: 0 0 6px 0;
    border-radius: 0 0 6px 0;
}

.zebra tfoot td:only-child{
    -moz-border-radius: 0 0 6px 6px;
    -webkit-border-radius: 0 0 6px 6px
    border-radius: 0 0 6px 6px
}
  
</style>
<style id='theme-skin-inline-css' type='text/css'>

		
				body, button, input, select, textarea {
					font-family: 'Source Sans Pro', sans-serif;
				}
				body {
					font-size: 14px;
					font-weight: 300;
					line-height: 21px;
					color: #222222;
					
					
				}
			
					h1, .h1 {
						font-family: 'Open Sans', sans-serif;
						font-size: 48px;
						font-weight: 400;
						line-height: 60px;
						color: #222222;
						
						
					}
					h1 a, .h1 a {
						color: #222222;
					}
				
					h2, .h2 {
						font-family: 'Open Sans', sans-serif;
						font-size: 36px;
						font-weight: 400;
						line-height: 43px;
						color: #222222;
						
						
					}
					h2 a, .h2 a {
						color: #222222;
					}
				
					h3, .h3 {
						font-family: 'Open Sans', sans-serif;
						font-size: 24px;
						font-weight: 400;
						line-height: 28px;
						color: #222222;
						
						
					}
					h3 a, .h3 a {
						color: #222222;
					}
				
					h4, .h4 {
						font-family: 'Open Sans', sans-serif;
						font-size: 20px;
						font-weight: 400;
						line-height: 24px;
						color: #222222;
						
						
					}
					h4 a, .h4 a {
						color: #222222;
					}
				
					h5, .h5 {
						font-family: 'Open Sans', sans-serif;
						font-size: 18px;
						font-weight: 400;
						line-height: 20px;
						color: #222222;
						
						
					}
					h5 a, .h5 a {
						color: #222222;
					}
				
					h6, .h6 {
						font-family: 'Open Sans', sans-serif;
						font-size: 16px;
						font-weight: 400;
						line-height: 18px;
						color: #222222;
						
						
					}
					h6 a, .h6 a {
						color: #222222;
					}
				
	
		
			header.noFixMenu .topWrap .logo {
				height: 100px;
			}
			header.noFixMenu .topWrap .logo img {
				height: 100px;
			}
			header.noFixMenu .topWrap .logo .logo_text {
				line-height: 100px;
			}
			header.noFixMenu.menu_right .topWrap .openRightMenu,
			header.noFixMenu.menu_right .topWrap .search {
				margin-top: 53px;
				margin-bottom: 57px;
			}
			header.noFixMenu.menu_right .topWrap .topMenuStyleLine > ul > li {
				padding-top: 50px;
				padding-bottom: 50px;
			}
			header.noFixMenu.menu_right .topWrap .topMenuStyleLine > ul#mainmenu > li > .menu-panel,
			header.noFixMenu.menu_right .topWrap .topMenuStyleLine > ul > li > ul {
				top: 120px;
			}
		
	
		
			header.noFixMenu .topWrap .logo {
				padding: 20px 0 0 0;
			}
		
	
		
			footer .logo img {
				height: 30px;
			}
		
	
		
			.sliderHomeBullets {
				height: 500px;
			}
		
	
		
			.sc_quote_style_1,
			.audio_container,
			.topTabsWrap,
			.relatedPostWrap article .wrap.no_thumb,
			.postAside,
			.postStatus,
			.postLink,
			.portfolioWrap .isotopePadding,
			.userFooterSection.global,
			.sc_testimonials_style {
				background-image:url(https://weixin.bzu.edu.cn/wp/wp-content/uploads/2016/04/bg-1.png);
			}
			.sc_testimonials_style {
				background-size: 100% auto;
			}
		
	
		
			.userHeaderSection.global {
				background-image:url(https://weixin.bzu.edu.cn/wp/wp-content/uploads/2016/04/bg-1.png);
			}
		
	
		
a:hover,
.theme_accent,
.theme_accent:before,
.topTabsWrap .speedBar a:hover,
.topWrap .topMenuStyleLine > ul > li ul li a:hover,
.topWrap .topMenuStyleLine .current-menu-item > a,
.topWrap .topMenuStyleLine .current-menu-ancestor > a,
.topWrap .topMenuStyleLine > ul li a:hover,
.topWrap .topMenuStyleLine > ul li.sfHover > a,
.infoPost a:hover,
.tabsButton ul li a:hover,
.popularFiltr ul li a:hover,
.isotopeFiltr ul li a:hover,
.widget_popular_posts article h3:before,
.widgetTabs .widget_popular_posts article .post_info .post_date a:hover,
.sidebar .widget_popular_posts article .post_info .post_date a:hover,
.sidebar .widget_recent_posts article .post_info .post_date a:hover,
.main .widgetWrap a:hover,
.main .widgetWrap a:hover span,
.widgetWrap a:hover span,
.roundButton:hover a,
input[type="submit"]:hover,
input[type="button"]:hover,
.squareButton > a:hover,
.nav_pages_parts > a:hover,
.nav_comments > a:hover,
.comments_list a.comment-edit-link:hover,
.wp-calendar tbody td.today a:hover,
blockquote.sc_quote_title a:hover,
blockquote.sc_quote_style_1 a:hover,
blockquote.sc_quote_style_2 a:hover,
.postLink a,
.masonry article .masonryInfo a:hover,
.masonry article .masonryInfo span.infoTags a:hover,
.relatedPostWrap article .relatedInfo a:hover,
.relatedPostWrap article .relatedInfo span.infoTags a:hover,
.infoPost span.infoTags a:hover,
.page404 p a,
.page404 .searchAnimation.sFocus .searchIcon,
.copyWrap a,
.comments .commBody li.commItem .replyWrap .posted a:hover,
.comments .commBody li.commItem h4 a:hover,
.ratingItem span:before,
.reviewBlock .totalRating,
.widget_area .contactInfo .fContact:before,
.footerStyleLight .widget_area article .post_title:before,
.footerStyleLight .widget_area article .post_info a:hover,
.footerStyleLight .widget_area article .post_info .post_date a:hover,
.sc_list_style_arrows li:before,
.sc_list_style_arrows li a:hover,
.sc_list_style_iconed li a:hover,
.sc_accordion.sc_accordion_style_2 .sc_accordion_item.sc_active .sc_accordion_title,
.sc_accordion.sc_accordion_style_2 .sc_accordion_item.sc_active .sc_accordion_title:before,
.sc_toggles.sc_toggles_style_2 .sc_toggles_item.sc_active .sc_toggles_title,
.sc_toggles.sc_toggles_style_2 .sc_toggles_item.sc_active .sc_toggles_title:before,
.sc_tabs .sc_tabs_titles li a:hover,
.sc_highlight.sc_highlight_style_2,
.sc_price_item .sc_price_money,
.sc_price_item .sc_price_penny,
.sc_pricing_table .sc_pricing_columns ul li .sc_icon,
.sc_title_icon,
.sc_scroll_controls .flex-direction-nav a:hover:before,
.sc_testimonials_style_1 .flex-direction-nav a:hover:before,
.sc_testimonials_style_3 .flex-direction-nav a:hover:before,
.sc_testimonials_style_3 .flex-direction-nav a:active:before,
.pagination .pageLibrary > li.libPage > .pageFocusBlock .flex-direction-nav a:hover:before,
.topWrap .usermenu_area ul.usermenu_list li.usermenu_currency > a:hover,
.topWrap .usermenu_area ul.usermenu_list li.usermenu_currency.sfHover > a,
.topWrap .usermenu_area ul.usermenu_list li ul li a:hover,
.topWrap .usermenu_area ul.usermenu_list li.usermenu_cart .widget_area ul li a:hover,
.topWrap .usermenu_area a:hover,
.topWrap .usermenu_area .sfHover a,
.sidemenu_wrap .usermenu_area ul.usermenu_list li.usermenu_currency > a:hover,
.sidemenu_wrap .usermenu_area ul.usermenu_list li.usermenu_currency.sfHover > a,
.sidemenu_wrap .usermenu_area ul.usermenu_list li ul li a:hover,
.sidemenu_wrap .usermenu_area ul.usermenu_list li.usermenu_cart .widget_area ul li a:hover,
.sc_blogger a:hover,
.sc_blogger.style_date .load_more:before,
.sc_blogger.style_accordion .sc_blogger_info .comments_number,
.widgetTabs .widgetTop ul > li:not(.tabs):before,
.widgetTabs .widgetTop ul > li:not(.tabs) > a:hover,
.widgetTabs .widgetTop ul > li:not(.tabs) > a:hover span,
.widgetTabs .widgetTop.widget_popular_posts article .post_title:before,
.swpRightPos .tabsMenuBody a:hover,
.swpRightPos .tabsMenuBody a:hover:before,
.swpRightPos .panelmenu_area .current-menu-item > a,
.swpRightPos .panelmenu_area .current-menu-ancestor > a,
.swpRightPos .panelmenu_area > ul li a:hover,
.swpRightPos .panelmenu_area > ul li.sfHover > a,
.swpRightPos .panelmenu_area .current-menu-item.dropMenu:before,
.swpRightPos .panelmenu_area .current-menu-ancestor.dropMenu:before,
.swpRightPos .panelmenu_area li.liHover.dropMenu:before,
.topWrap .search:not(.searchOpen):hover:before,
.topWrap .search .searchSubmit:hover .icoSearch:before,
.user-popUp .formItems.loginFormBody .remember .forgotPwd,
.user-popUp .formItems.loginFormBody .loginProblem,
.user-popUp .formItems.registerFormBody .i-agree a,
.sc_slider_pagination_area .flex-control-nav.manual .slide_info .slide_title,
#toc .toc_item.current .toc_icon,
#toc .toc_item:hover .toc_icon,
.openResponsiveMenu:hover,
.openResponsiveMenu:hover:before,
.sidebarStyleLight .widgetWrap ul li.liHover:before,
.sidebarStyleLight .widgetWrap  a:hover,
.sidebarStyleLight .widgetWrap  a:active,
.sidebarStyleLight.widget_area .widgetWrap a:hover span,
.sidebarStyleLight.widget_area .widgetWrap a:hover,
.sidebarStyleLight.widget_area .widgetWrap ul > li > a:hover,
.sidebarStyleLight.widget_area .widgetWrap ul > li > a:hover span,
.sidebarStyleLight.widget_area ul.tabs > li.ui-state-active > a,
.sidebarStyleLight .widgetWrap .tagcloud a:hover,
.sidebarStyleLight .widgetWrap .tagcloud a:active,
.sidebarStyleLight.widget_area a:hover,
.sidebarStyleLight.widget_area a:hover span,
.sidebarStyleLight.widget_area .ui-state-active a,
.sidebarStyleLight.widget_area .widgetWrap ul li a:hover,
.sidebarStyleLight.widget_area .widget_twitter ul li:before,
.sidebarStyleLight .wp-calendar tfoot th a:before,
.sidebarStyleLight.widget_area table.wp-calendar tfoot a:hover,
.sidebarStyleLight.widget_area article span:before,
.sidebarStyleLight.widget_area .widgetWrap ul > li.dropMenu:hover:before,
.sidebarStyleLight.widget_area .widgetWrap ul > li.dropMenu.dropOpen:before,
.sc_pricing_light .sc_pricing_columns:hover ul.columnsAnimate .sc_pricing_title,
.sc_pricing_light .sc_pricing_columns:hover ul.columnsAnimate .sc_pricing_data > span,
.sc_pricing_light .sc_pricing_columns.active ul.columnsAnimate .sc_pricing_title,
.sc_pricing_light .sc_pricing_columns.active ul.columnsAnimate .sc_pricing_data > span,
.postSharing > ul > li> a:before,
.post .tagsWrap .post_cats a:hover,
.post .tagsWrap .post_tags a:hover,
.post_text_area .tagsWrap .post_cats a:hover,
.post_text_area .tagsWrap .post_tags a:hover,
.infoPost > span:before,
.infoPost > span a:before,
.comments .commBody li.commItem .replyWrap a:hover,
.relatedPostWrap .no_indent_style article .wrap a:hover,
.postLink a:hover,
.portfolBlock ul li a:hover,
.swpRightPos .searchBlock .searchSubmit:hover:before,
.twitBlock .sc_slider .swiper-slide a:hover,
.twitBlockWrap .twitterAuthor a:hover,
.relatedPostWrap.sc_blogger article .relatedInfo a:hover,
.sc_blogger.style_date .sc_blogger_item .sc_blogger_info a:hover,
ul#mainmenu .menu-panel.thumb_title > li > ul > li > ul li a:before,
.footerContentWrap .googlemap_button:after

{ color:#238acf; }

.roundButton.border_1:hover > a,
.squareButton.border_1 > a:hover,
.squareButton.border_1 > a:active,
.topWrap .topMenuStyleLine > ul > li ul li a:hover,
.flip-clock-wrapper ul li a div div.inn

{ color:#238acf !important; }

.theme_accent_bgc,
.theme_accent_bgc:before,
.sc_video_player:active .sc_video_play_button:after,
input[type="submit"]:active,
input[type="button"]:active,
.squareButton.active > span,
.squareButton.active > a,
.squareButton.ui-state-active > a,
.roundButton > a:active,
.squareButton > a:active,
.squareButton.global > a,
.nav_pages_parts > span.page_num,
.nav_comments > span.current,
ul > li.likeActive:active > a,
.masonry article .status,
.portfolio .isotopeElement .folioShowBlock:before,
.post .postStatus,
.itemPageFull .itemDescriptionWrap .toggleButton:active,
.footerWrap .footerWidget .sc_video_player:active .sc_video_play_button:after,
.topMenuStyleLine > ul .menu-panel,
.sliderLogo .elastislide-wrapper nav span:active:before,
.sc_dropcaps.sc_dropcaps_style_1 .sc_dropcap,
.sc_highlight.sc_highlight_style_1,
.sc_title_bg,
.sc_testimonials_style_1 .flex-direction-nav a:active,
.sc_testimonials_style_3 .sc_testimonials_items,
.sc_testimonials_style_3 .flex-direction-nav li,
.sc_testimonials_style_3 .flex-direction-nav a,
.pagination .pageLibrary > li.libPage > .pageFocusBlock .flex-direction-nav a:active,
.sc_popup_light:before,
.global_bg,
.widgetTabs .widgetTop .tagcloud a:hover,
.widgetTabs .widgetTop .tagcloud a:active,
.fullScreenSlider.globalColor .sliderHomeBullets .rsContent:before,
.fullScreenSlider .sliderHomeBullets .rsContent .slide-3 .order p span,
ul.sc_list_style_disk li:before,
.sc_slider_pagination_area .flex-control-nav.manual .slide_date,
.sc_contact_form_custom .bubble label:hover,
.sc_contact_form_custom .bubble label.selected,
.topWrap .cart a.cart_button,
.sidebarStyleLight .widget_socials .socPage ul li a:hover,
.sidebarStyleLight.widget_area .instagram-pics li a:after,
.sidebarStyleLight.widget_area .flickr_images .flickr_badge_image a:after,
.sidebarStyleLight .wp-calendar tbody td a:hover,
.sidebarStyleLight .wp-calendar tbody td a:hover,
.sidebarStyleLight .wp-calendar tbody td.today > span,
.sidebarStyleLight .wp-calendar tbody td.today a,
.footerStyleLight .contactFooter .contactShare ul li a:hover,
.footerContentWrap .googlemap_button,
.page404 .titleError > span,
.isotopeFiltr ul a .data_count,
.isotopeFiltr ul a .data_count:before


{ background-color:#238acf; }

.sc_pricing_light .sc_pricing_columns:hover ul.columnsAnimate .sc_button > a,
.sc_pricing_light .sc_pricing_columns.active ul.columnsAnimate .sc_button > a

{ background-color: #238acf !important; }

.theme_accent_border,
.squareButton.border_1 > a:hover,
.squareButton.border_1 > a:active,
.sidebarStyleLight .widgetWrap .tagcloud a:hover,
.sidebarStyleLight .widgetWrap .tagcloud a:active,
.sidebarStyleLight.widget_area .tabs_area ul.tabs > li > a:hover,
.sidebarStyleLight.widget_area .tagcloud a:hover,
.sidebarStyleLight.widget_area .tagcloud a:active,
.sidebarStyleLight.widget_area ul.tabs > li.ui-state-active > a,
.sidebarStyleLight.widget_area .wp-calendar tbody a:hover,
.sc_pricing_light .sc_pricing_columns:hover ul.columnsAnimate,
.sc_pricing_light .sc_pricing_columns.active ul.columnsAnimate,
#toc .toc_item.current,
#toc .toc_item:hover,
.topWrap .search:not(.searchOpen):hover,
.upToScroll a.addBookmark:hover,
.sc_scroll_controls .flex-direction-nav a:active,
.sc_testimonials_style_1 .flex-direction-nav a:active,
.pagination .flex-direction-nav a:active
.sc_scroll_controls .flex-direction-nav a:hover,
.topWrap .sidebar_cart .widget_shopping_cart_content .buttons .button:hover,
.openResponsiveMenu:hover
{ border-color: #238acf; }

.theme_accent_bg,
.theme_accent_bg:before
{ background:#238acf; }



.squareButton.global > a:hover,
.squareButton.global > a:active,
.topWrap .sidebar_cart .widget_shopping_cart_content .buttons .button.checkout:hover,
.topWrap .cart .cart_button:hover

{ background-color: rgba(35,138,207,0.7) !important; }


::selection { background-color:#238acf;}
::-moz-selection { background-color:#238acf;}

.theme_accent_bg
{ background:#238acf; }

.theme_accent_1,
.theme_accent_1:before,
.sc_pricing_dark .sc_pricing_columns:hover ul.columnsAnimate .sc_pricing_data > span,
.sc_pricing_dark .sc_pricing_columns:hover ul.columnsAnimate .sc_pricing_title,
.sc_pricing_dark .sc_pricing_columns.active ul.columnsAnimate .sc_pricing_data > span,
.sc_pricing_dark .sc_pricing_columns.active ul.columnsAnimate .sc_pricing_title,
.postLink a
{ color:#238acf; }

.roundButton.border:hover > a,
.squareButton.border > a:hover,
.squareButton.border > a:active,
.revlink.border:hover,
.revlink.border:active
{ color:#238acf !important; }

.theme_accent_1_bgc,
.theme_accent_1_bgc:before,
.sc_dropcaps.sc_dropcaps_style_4 .sc_dropcap,
.squareButton.accent_1 > a,
.revlink.filled
{ background-color: #238acf; }

.sc_pricing_dark .sc_pricing_columns .sc_button > a:hover,
.sc_pricing_dark .sc_pricing_columns .sc_button > a:active,
.sc_pricing_dark .sc_pricing_columns:hover ul.columnsAnimate .sc_button > a

{ background-color: #238acf !important; }

.squareButton.border > a:hover,
.squareButton.border > a:active,
.sc_pricing_dark .sc_pricing_columns:hover ul.columnsAnimate,
.sc_pricing_dark .sc_pricing_columns.active ul.columnsAnimate,
.revlink.border:hover,
.revlink.border:active
{ border-color: #238acf; }

.theme_accent_1_bg,
.theme_accent_1_bg:before
{ background:#238acf; }

.squareButton.accent_1 > a:hover,
.squareButton.accent_1 > a:active,
.revlink.filled:hover,
.revlink.filled:active
{ background-color: rgba(35,138,207,0.7) !important; }



.theme_accent_2,
.theme_accent_2:before,
.sc_tooltip_parent,
.hoverIncrease .hoverIcon:hover:before,
.sc_video_player .sc_video_play_button:hover:after,
.sc_video_player:active .sc_video_play_button:hover:after,
.sc_accordion.sc_accordion_style_1 .sc_accordion_item.sc_active .sc_accordion_title,
.sc_toggles.sc_toggles_style_1 .sc_toggles_item.sc_active .sc_toggles_title,
.sc_team .sc_team_item .sc_team_item_avatar .sc_team_item_socials li a:hover,
.hoverIncrease .hoverIcon:hover:before,
.hoverIncrease .hoverLink:hover:before
{ color:#238acf; }

.relatedPostWrap.sc_blogger article a.readmore_blogger:hover
{ color:#238acf !important; }

.theme_accent_2_bgc,
.theme_accent_2_bgc:before,
.sc_tooltip_parent .sc_tooltip,
.sc_tooltip_parent .sc_tooltip:before,
.sc_dropcaps.sc_dropcaps_style_3 .sc_dropcap,
.hoverIncrease .hoverShadow,
.sc_accordion.sc_accordion_style_1 .sc_accordion_item .sc_accordion_title:before,
.sc_toggles.sc_toggles_style_1 .sc_toggles_item .sc_toggles_title:before,
.squareButton.accent_2 > a,
.sc_skills_bar .sc_skills_item .sc_skills_count,
.sc_skills_counter .sc_skills_item.sc_skills_style_3 .sc_skills_count,
.sc_skills_counter .sc_skills_item.sc_skills_style_4 .sc_skills_count,
.sc_skills_counter .sc_skills_item.sc_skills_style_4 .sc_skills_info,
.relatedPostWrap .wrap:before,
.relatedPostWrap.sc_blogger .wrap:hover:before,
.portfolioWrap .isotopePadding:before,
#pagination .squareButton.active span,
#pagination .squareButton a:hover,
#pagination .squareButton a:active,
#viewmore_link:hover,
#viewmore_link:active,
.user-popUp .formItems .formList li .sendEnter,
.user-popUp ul.loginHeadTab li.ui-tabs-active:before,
.sc_blogger.style_date .sc_blogger_item .sc_blogger_date,
.sc_scroll_bar .swiper-scrollbar-drag:before,
.sc_blogger.sc_blogger_vertical.style_date.sc_scroll_controls ul.flex-direction-nav li a:hover

{ background-color: #238acf; }

.theme_accent_2_bg,
.theme_accent_2_bg:before
{ background:#238acf; }

a.sc_icon.bg_icon.sc_icon_round:hover,
a.sc_icon.no_bg_icon.sc_icon_round:hover
{ background-color: #238acf !important; }

.sc_slider_flex .sc_slider_info,
.sc_slider_swiper .sc_slider_info,
.squareButton.accent_2 > a:hover,
.squareButton.accent_2 > a:active,
.user-popUp .formItems .formList li .sendEnter:hover,
.user-popUp .formItems .formList li .sendEnter:active
{ background-color: rgba(35,138,207,0.7) !important; }

.postSharing > ul > li > a:active,
.postSharing > ul > li > span:active,
.roundButton > a:active,
.nav_pages_parts > span.page_num,
.nav_comments > span.current,
.itemPageFull .itemDescriptionWrap .toggleButton:active,
.footerWidget .sc_video_player:active .sc_video_play_button:after,
.sliderLogo .elastislide-wrapper nav span:active:before,
pre.code,
.sc_tooltip_parent
{ border-color: #238acf; }

blockquote.sc_quote_style_2
{ border-left-color: #238acf; }





.sc_image_shape_round:hover figcaption,
.post .sc_image_shape_round:hover figcaption
{ background: rgba(35,138,207,0.6); }

.theme_accent_3,
.theme_accent_3:before,
.widgetWrap ul li.liHover:before,
.widgetWrap  a:hover,
.widgetWrap  a:active,
.widget_area .widgetWrap ul > li > a:hover,
.widget_area .widgetWrap ul > li > a:hover span,
.sidebarStyleDark.widget_area a:hover,
.sidebarStyleDark.widget_area a:hover span,
.widget_area ul.tabs > li.ui-state-active > a,
aside.widgetWrap .tagcloud a:hover,
aside.widgetWrap .tagcloud a:active,
.sidebarStyleDark.widget_area a:hover,
.sidebarStyleDark.widget_area .ui-state-active a,
.sidebarStyleDark.widget_area .widgetWrap ul li a:hover,
.sidebarStyleDark.widget_area .widget_twitter ul li:before,
.sidebarStyleDark .wp-calendar tfoot th a:before,
.sidebarStyleDark.widget_area table.wp-calendar tfoot a:hover,
.sidebarStyleDark.widget_area .widgetWrap ul > li.dropMenu:hover:before,
.sidebarStyleDark.widget_area .widgetWrap ul > li.dropMenu.dropOpen:before,
.copyWrap .copy .copyright > a,
.widget_area article span:before,
.twitBlock .sc_slider .swiper-slide a,
.twitBlock .sc_slider .swiper-slide .twitterIco:before,
.menuSearch .searchSubmit:hover:before,
.sidemenu_wrap .sidemenu_area .current-menu-item > a,
.sidemenu_wrap .sidemenu_area .current-menu-ancestor > a,
.sidemenu_wrap .sidemenu_area > ul li a:hover,
.sidemenu_wrap .sidemenu_area > ul li.sfHover > a,
.sidemenu_wrap .sidemenu_area .current-menu-item.dropMenu:before,
.sidemenu_wrap .sidemenu_area .current-menu-ancestor.dropMenu:before,
.sidemenu_wrap .sidemenu_area li.liHover.dropMenu:before,
.twitBlock .sc_slider .swiper-slide a,
.twitBlockWrap .twitterAuthor a,
.sidebarStyleDark.widget_area .widgetWrap a:hover,
.sidebarStyleDark.widget_area .widgetWrap .post_info a:hover

{ color:#238acf; }

.sidebarStyleDark.widget_area a:hover span
{ color:#238acf !important; }

.theme_accent_3_bgc,
.theme_accent_3_bgc:before,
.sc_dropcaps.sc_dropcaps_style_2 .sc_dropcap,
.squareButton.accent_3 > a,
.copyWrap .socPage ul li a:hover,
.sidebarStyleDark .widget_socials .socPage ul li a:hover,
.widget_area .instagram-pics li a:after,
.widget_area .flickr_images .flickr_badge_image a:after,
.wp-calendar tbody td a:hover,
.footerStyleDark .contactFooter .contactShare ul li a:hover,
ul > li.share > ul.shareDrop > li > a:hover,
.author .socPage ul li a:hover,
.sc_team .sc_team_item .sc_team_item_avatar:after,
.wp-calendar tbody td a:hover,
.wp-calendar tbody td.today > span
{ background-color: #238acf; }

.theme_accent_3_bg,
.theme_accent_3_bg:before
{ background:#238acf; }

.squareButton.accent_3 > a:hover,
.squareButton.accent_3 > a:active,
.squareButton.gray > a:hover,
.squareButton.gray > a:active
{ background-color: rgba(35,138,207,0.7);}







.widgetWrap .tagcloud a:hover,
.widgetWrap .tagcloud a:active,
.widget_area .tabs_area ul.tabs > li > a:hover,
.sidebarStyleDark.widget_area .tagcloud a:hover,
.sidebarStyleDark.widget_area .tagcloud a:active,
.widget_area ul.tabs > li.ui-state-active > a

{ border-color: #238acf; }

.sc_table table tr:hover
{ background-color: rgba(35,138,207,0.15); }

	
</style>
<link rel='stylesheet' id='responsive-css'  href='https://weixin.bzu.edu.cn/wp/wp-content/themes/classter/css/responsive.css' type='text/css' media='all' />
<link rel='stylesheet' id='theme-skin-responsive-css'  href='https://weixin.bzu.edu.cn/wp/wp-content/themes/classter/skins/general/general-responsive.css' type='text/css' media='all' />
<link rel='stylesheet' id='jetpack_css-css'  href='https://weixin.bzu.edu.cn/wp/wp-content/plugins/jetpack/css/jetpack.css?ver=4.6' type='text/css' media='all' />
<script type='text/javascript' src='https://weixin.bzu.edu.cn/wp/wp-includes/js/jquery/jquery.js?ver=1.12.4'></script>
<script type='text/javascript' src='https://weixin.bzu.edu.cn/wp/wp-includes/js/jquery/jquery-migrate.min.js?ver=1.4.1'></script>
<link rel='https://api.w.org/' href='https://weixin.bzu.edu.cn/wp/wp-json/' />
<link rel="EditURI" type="application/rsd+xml" title="RSD" href="https://weixin.bzu.edu.cn/wp/xmlrpc.php?rsd" />
<link rel="wlwmanifest" type="application/wlwmanifest+xml" href="https://weixin.bzu.edu.cn/wp/wp-includes/wlwmanifest.xml" /> 
<meta name="generator" content="WordPress 4.7.6" />
<meta name="generator" content="Custom Login v3.2.5" />

<link rel='dns-prefetch' href='//v0.wordpress.com'>
<style type='text/css'>img#wpstats{display:none}</style></head>

<body class="archive category category-6 themerex_body wide top_panel_hide theme_skin_general group-blog">
	
	
	<a id="toc_top" class="sc_anchor" title="To Top" data-description="&lt;i&gt;Back to top&lt;/i&gt; - &lt;br&gt;scroll to top of the page" data-icon="icon-up" data-url="" data-separator="yes"></a>
	
	<!--[if lt IE 9]>
	<div class="sc_infobox sc_infobox_style_error"><div style="text-align:center;">It looks like you're using an old version of Internet Explorer. For the best WordPress experience, please <a href="http://microsoft.com" style="color:#191919">update your browser</a> or learn how to <a href="http://browsehappy.com" style="color:#222222">browse happy</a>!</div></div>	<![endif]-->
	
	<div class="main_content">
				<div class="boxedWrap">
			
			
			
					<div id="topOfPage" class="topTabsWrap">
						<div class="main">
							
							
							<h1 class="pageTitle h1">动态详情</h1>						</div>
					</div>
			

				
<div class="main" role="main">
	
<div class="content" style="position:relative;top:-40px;">
	<article class="bg_post post_format_standard postLeft odd viewmore post-579 post type-post status-publish format-standard hentry category-6">

	
			<div class="post_wrap">
	<jsp:useBean id="news" class="database.News"/>
	<jsp:setProperty property="id" name="news"/>
	<!-- <h1 align="center">工作动态</h1> -->
	<%
		HashMap newsinfo=(HashMap)news.getSingleNews();
		if(newsinfo!=null){
	%>
	<table class="bordered">
	 <thead>
    <tr align="center">
        <th><%=newsinfo.get("title") %></th>
    </tr>
    </thead>
    <tr>
        <td><%=newsinfo.get("date") %></td>
    </tr>
     <thead>
    <tr>
        <td><%=newsinfo.get("author") %></td>
    </tr>
    </thead>        
    <tr>   
        <td><%=newsinfo.get("content") %></td>
    </tr>
</table>
<%
		}
	%>
			
	</div>

</article>
		</div> <!-- </div> class="content" style="position:relative;top:-40px;"> -->
	</div> <!-- </div> class="main" role="main"> -->				</div> <!-- /.mainWrap -->

			<div class="footerContentWrap">
				
				
												<footer class="footerWrap footerStyleLight">
					<div class="main footerWidget widget_area sidebarStyleLight">
											</div>
				</footer>
				
								<div class="copyWrap">
					<div class="copy main">
						<div class="copyright">Copyright © 2017-2018&nbsp;泰山学院<br/>All Rights Reserved<br/>										</div>
					</div>
				</div>
				
			</div><!-- /.footerContentWrap -->

					</div><!-- ./boxedWrap -->
	</div><!-- ./main_content -->
<script type="text/javascript">
// Javascript String constants for translation
THEMEREX_MESSAGE_BOOKMARK_ADD   = "Add the bookmark";
THEMEREX_MESSAGE_BOOKMARK_ADDED = "Current page has been successfully added to the bookmarks. You can see it in the right panel on the tab \'Bookmarks\'";
THEMEREX_MESSAGE_BOOKMARK_TITLE = "Enter bookmark title";
THEMEREX_MESSAGE_BOOKMARK_EXISTS= "Current page already exists in the bookmarks list";
THEMEREX_MESSAGE_SEARCH_ERROR = "Error occurs in AJAX search! Please, type your query and press search icon for the traditional search way.";
THEMEREX_MESSAGE_EMAIL_CONFIRM= "On the e-mail address <b>%s</b> we sent a confirmation email.<br>Please, open it and click on the link.";
THEMEREX_MESSAGE_EMAIL_ADDED  = "Your address <b>%s</b> has been successfully added to the subscription list";
THEMEREX_REVIEWS_VOTE		  = "Thanks for your vote! New average rating is:";
THEMEREX_REVIEWS_ERROR		  = "Error saving your vote! Please, try again later.";
THEMEREX_MAGNIFIC_LOADING     = "Loading image #%curr% ...";
THEMEREX_MAGNIFIC_ERROR       = "<a href=\"%url%\">The image #%curr%</a> could not be loaded.";
THEMEREX_MESSAGE_ERROR_LIKE   = "Error saving your like! Please, try again later.";
THEMEREX_GLOBAL_ERROR_TEXT	  = "Global error text";
THEMEREX_NAME_EMPTY			  = "The name can\'t be empty";
THEMEREX_NAME_LONG 			  = "Too long name";
THEMEREX_EMAIL_EMPTY 		  = "Too short (or empty) email address";
THEMEREX_EMAIL_LONG			  = "Too long email address";
THEMEREX_EMAIL_NOT_VALID 	  = "Invalid email address";
THEMEREX_SUBJECT_EMPTY		  = "The subject can\'t be empty";
THEMEREX_SUBJECT_LONG 		  = "Too long subject";
THEMEREX_MESSAGE_EMPTY 		  = "The message text can\'t be empty";
THEMEREX_MESSAGE_LONG 		  = "Too long message text";
THEMEREX_SEND_COMPLETE 		  = "Send message complete!";
THEMEREX_SEND_ORDER_COMPLETE  = "Thank you! We\'ll be in touch.";
THEMEREX_SEND_ERROR 		  = "Transmit failed!";
THEMEREX_LOGIN_EMPTY		  = "The Login field can\'t be empty";
THEMEREX_LOGIN_LONG			  = "Too long login field";
THEMEREX_PASSWORD_EMPTY		  = "The password can\'t be empty and shorter then 5 characters";
THEMEREX_PASSWORD_LONG		  = "Too long password";
THEMEREX_PASSWORD_NOT_EQUAL   = "The passwords in both fields are not equal";
THEMEREX_REGISTRATION_SUCCESS = "Registration success! Please log in!";
THEMEREX_REGISTRATION_FAILED  = "Registration failed!";
THEMEREX_REGISTRATION_AUTHOR  = "Your account is waiting for the site admin moderation!";
THEMEREX_GEOCODE_ERROR 		  = "Geocode was not successful for the following reason:";
THEMEREX_GOOGLE_MAP_NOT_AVAIL = "Google map API not available!";


// AJAX parameters
var THEMEREX_ajax_url = "";
var THEMEREX_ajax_nonce = "06eaabe521";

// Site base url
var THEMEREX_site_url = "";

// Theme base font
var THEMEREX_theme_font = "Source Sans Pro";

// Theme skin
var THEMEREX_theme_skin = "general";
var THEMEREX_theme_skin_bg = "#ffffff";

// Slider height
var THEMEREX_slider_height = 500;

// System message
var THEMEREX_systemMessage = {message:"", status: "", header: ""};

// User logged in
var THEMEREX_userLoggedIn = false;

// Show table of content for the current page
var THEMEREX_menu_toc = 'fixed';
var THEMEREX_menu_toc_home = THEMEREX_menu_toc!='no' && false;
var THEMEREX_menu_toc_top = THEMEREX_menu_toc!='no' && true;

// Fix main menu
var THEMEREX_menuFixed = true;

// Use responsive version for main menu
var THEMEREX_menuResponsive = 2000;
var THEMEREX_responsive_menu_click = true;

// Right panel demo timer
var THEMEREX_demo_time = 0;

// Video and Audio tag wrapper
var THEMEREX_useMediaElement = true;

// Use AJAX search
var THEMEREX_useAJAXSearch = true;
var THEMEREX_AJAXSearch_min_length = 3;
var THEMEREX_AJAXSearch_delay = 200;

// Popup windows engine
var THEMEREX_popupEngine  = 'magnific';
var THEMEREX_popupGallery = true;

// E-mail mask
THEMEREX_EMAIL_MASK = '^([a-zA-Z0-9_\\-]+\\.)*[a-zA-Z0-9_\\-]+@[a-z0-9_\\-]+(\\.[a-z0-9_\\-]+)*\\.[a-z]{2,6}$';

// Messages max length
var THEMEREX_msg_maxlength_contacts = 1000;
var THEMEREX_msg_maxlength_comments = 1000;

// Remember visitors settings
var THEMEREX_remember_visitors_settings = false;

// VC frontend edit mode
var THEMEREX_vc_edit_mode = <script type='text/javascript' src='https://stats.wp.com/e-201743.js' async defer></script>
<script type='text/javascript'>
	_stq = window._stq || [];
	_stq.push([ 'view', {v:'ext',j:'1:4.6',blog:'124981050',post:'0',tz:'8',srv:''} ]);
	_stq.push([ 'clickTrackerInit', '124981050', '0' ]);
</script>
	