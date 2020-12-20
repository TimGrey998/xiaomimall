<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta  charset="UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet" href="/xiaomimall/layui/css/layui.css" />
		<script type="text/javascript" src="/xiaomimall/layui/layui.js" ></script>
		<script type="text/javascript" src="/xiaomimall/js/jquery-3.3.1.min.js" ></script>
		<link rel="stylesheet" href="/xiaomimall/css/header.css" />
		<script>
			$(function(){

				//下拉导航的显式与隐藏
				$("#xl").mouseenter(function(){
					$(".xldh").show();
				});
				$("#xl").mouseleave(function(){
					$(".xldh").hide();
				});
				$(".xldh").mouseenter(function(){
					$(".xldh").show();
				});
				$(".xldh").mouseleave(function(){
					$(this).hide();
				});

				//点击购物车
				$(".my-shopping").click(function(){
					//location.assign("shopping.html");
					window.open("shopping.html");
				});
			});
		</script>
<body>

		<!-- 头部start -->
		<div class="my-header">
			<p class="my-login">
			<%
			    if(session.getAttribute("user")==null){
			 %>
			 <a href="/xiaomimall/LoginAction" target="_blank">请登录</a>
			 <% 
			    }else{
			  %>
			     <span>${user.username},你好!</span>
			  <% 
			    }
			%>
				
				<a href="reg.html" target="_blank">在线注册</a>
			</p>
			<p class="my-order">
				<a href="index.html" target="_parent">商城首页</a>
				<a href="userOrder.html" target="_parent">我的订单</a>
				<a href="userCenter.html" target="_parent">会员中心</a>
				<a href="admin/login.html" target="_blank">商家后台</a>
				<!--<a href="javascript:;" id="xl">站点导航</a>-->
			</p>
			<!--下拉导航-->
			<div class="xldh"></div>

		</div>

		<!-- 搜索部分start -->
		<div class="layui-container" style="height:100px;z-index:999;">
			<div class="layui-row layui-col-space15">
				<!--显示logo-->
				<div class="layui-col-md2" style="cursor:pointer;" onclick="javascript:window.parent.location.href='index.html'">
					<div class="my-logo">
						<span><img src="images/xiaomi_logo.jpg"></span>
					</div>
					<div class="my-logo-font">
						小米商城
					</div>
				</div>

				<!--搜索框-->
				<div class="layui-col-md8" style="">
					<input class="my-search" placeholder="搜索产品关键词" type="text" name="search" />
					<!--搜索按钮-->
					<div class="my-search-btn">
						<i class="layui-icon layui-icon-search"></i>
					</div>
				</div>

				<div class="layui-col-md2" style="">
					<!--购物车-->
					<div class="my-shopping">
						<span class="layui-icon layui-icon-cart"></span>
						购物车
						<span class="layui-badge" id="my-shopping-num">0</span>
					</div>
					<!--购物车详情-->
					<div class="my-shopping-mess">

					</div>

				</div>
			</div>
		</div>
		<!-- 搜索部分end -->


	</body>

	<script>
		layui.use('element', function(){
  			var element = layui.element;
		});
	</script>
</html>