<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>趣分期</title>
	<link rel="stylesheet" href="css/index.css">
	<link rel="stylesheet" href="css/reset.css">
	<script src="http://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
	<script>
		(function(){
			if (typeof jQuery == 'undefined') {
 				document.write(unescape("%3Cscript src='js/jquery-2.1.4.min.js' type='text/javascript'%3E%3C/script%3E"));
			}
		})()
		
		function _hyz() {
	/*
	 * 1. 获取<img>元素
	 * 2. 重新设置它的src
	 * 3. 使用毫秒来添加参数
	 */
	$("#imgVerifyCode").attr("src", "/Installment/VerifyCode_verify.do?a=" + new Date().getTime());
}
	</script>
</head>
<body>
	<header>
		<nav class="top_nav">
			<ul class="tn_left">
				<li id="login">登录</li><!--
			 --><li>注册</li><!--
			 --><li>个人中心</li>
			</ul>
		</nav>
		<div class="logo"><h4>地球表面最好的分期商城</h4><h1>趣分期 <span>网上商城</span></h1></div>
	</header>
	<section class="main">
		<nav class="main_nav">
			<div class="first_class">
				<ul>
					<li>首页</li><div class="bd"></div><!--
				 --><li>商品分类</li><div class="bd"></div>
				</ul>
			</div>
			<div class="show_class">
				<div id="wrapper01" class="section">
					<div class="title_bg">
						<div class="title"><img src="img/gnb_banner_line.gif" alt="">
							<ul><!--
							--><li>手机</li><!--
							--><li>电脑/平板</li><!--
							--><li>摄影摄像</li><!--
							--><li>潮流数码</li>
							</ul>
						</div>
					</div>
					<div class="other_class">
						<div class="other_bg">
							<img src="img/GNB_BANNER_DST_150807.jpg" alt="">
							<ul>
								<li>三级菜单1</li>
								<li>三级菜单2</li>
								<li>三级菜单3</li>
								<li>三级菜单4</li>
								<li>三级菜单5</li>
								<li>三级菜单6</li>
								<li>三级菜单7</li>
								<li>三级菜单8</li>
								<li>三级菜单9</li>
							</ul>
							<ul>
								<li>三级菜单1</li>
								<li>三级菜单2</li>
								<li>三级菜单3</li>
								<li>三级菜单4</li>
								<li>三级菜单5</li>
								<li>三级菜单6</li>
								<li>三级菜单7</li>
								<li>三级菜单8</li>
								<li>三级菜单9</li>
							</ul>
							<ul>
								<li>三级菜单1</li>
								<li>三级菜单2</li>
								<li>三级菜单3</li>
								<li>三级菜单4</li>
								<li>三级菜单5</li>
								<li>三级菜单6</li>
								<li>三级菜单7</li>
								<li>三级菜单8</li>
								<li>三级菜单9</li>
							</ul>
	                        <ul>
								<li>三级菜单1</li>
								<li>三级菜单2</li>
								<li>三级菜单3</li>
								<li>三级菜单4</li>
								<li>三级菜单5</li>
								<li>三级菜单6</li>
								<li>三级菜单7</li>
								<li>三级菜单8</li>
								<li>三级菜单9</li>
							</ul>
                            <ul>
								<li>三级菜单1</li>
								<li>三级菜单2</li>
								<li>三级菜单3</li>
								<li>三级菜单4</li>
								<li>三级菜单5</li>
								<li>三级菜单6</li>
								<li>三级菜单7</li>
								<li>三级菜单8</li>
								<li>三级菜单9</li>
							</ul>
                        
						</div>
					</div>
				</div>
				<div id="wrapper02" class="section">
					<div class="title_bg">
						<div class="title"><img src="img/gnb_banner_line.gif" alt="">
							<ul><!--
							--><li>手机</li><!--
							--><li>电脑/平板</li><!--
							--><li>摄影摄像</li><!--
							--><li>潮流数码</li>
							</ul>
						</div>
					</div>
					<div class="other_class">
						<div class="other_bg">
							<img src="img/tp.png" alt="">
							<ul>
								<li>手机</li>
							</ul>
							<ul>
								<li>平板电脑</li>
								<li>笔记本电脑</li>
								<li>台式电脑</li>
								<li>游戏本</li>
								<li>摄像头</li>
								<li>键盘</li>
								<li>鼠标</li>
								<li>显示器</li>
							</ul>
							<ul>
								<li>数码相机</li>
								<li>单电/微单</li>
								<li>单反相机</li>
								<li>摄像机</li>
								<li>户外器材</li>
							</ul>
	                        <ul>
								<li>数码配件</li>
								<li>影视娱乐</li>
								<li>智能设备</li>
							</ul>
                        
						</div>
					</div>
				</div>
				<div id="wrapper03" class="section">
					<div class="title_bg">
						<div class="title"><img src="img/gnb_banner_line.gif" alt="">
							<ul><!--
							--><li>二级菜单1</li><!--
							--><li>二级菜单2</li><!--
							--><li>二级菜单3</li><!--
							--><li>二级菜单4</li><!--
						    --><li>二级菜单5</li>
							</ul>
						</div>
					</div>
					<div class="other_class">
						<div class="other_bg">
							<img src="img/GNB_BANNER_DST_150807.jpg" alt="">
							<ul>
								<li>三级菜单1</li>
								<li>三级菜单2</li>
								<li>三级菜单3</li>
								<li>三级菜单4</li>
								<li>三级菜单5</li>
								<li>三级菜单6</li>
								<li>三级菜单7</li>
								<li>三级菜单8</li>
								<li>三级菜单9</li>
							</ul>
							<ul>
								<li>三级菜单1</li>
								<li>三级菜单2</li>
								<li>三级菜单3</li>
								<li>三级菜单4</li>
								<li>三级菜单5</li>
								<li>三级菜单6</li>
								<li>三级菜单7</li>
								<li>三级菜单8</li>
								<li>三级菜单9</li>
							</ul>
							<ul>
								<li>三级菜单1</li>
								<li>三级菜单2</li>
								<li>三级菜单3</li>
								<li>三级菜单4</li>
								<li>三级菜单5</li>
								<li>三级菜单6</li>
								<li>三级菜单7</li>
								<li>三级菜单8</li>
								<li>三级菜单9</li>
							</ul>
	                        <ul>
								<li>三级菜单1</li>
								<li>三级菜单2</li>
								<li>三级菜单3</li>
								<li>三级菜单4</li>
								<li>三级菜单5</li>
								<li>三级菜单6</li>
								<li>三级菜单7</li>
								<li>三级菜单8</li>
								<li>三级菜单9</li>
							</ul>
                            <ul>
								<li>三级菜单1</li>
								<li>三级菜单2</li>
								<li>三级菜单3</li>
								<li>三级菜单4</li>
								<li>三级菜单5</li>
								<li>三级菜单6</li>
								<li>三级菜单7</li>
								<li>三级菜单8</li>
								<li>三级菜单9</li>
							</ul>
                        
						</div>
					</div>
				</div>
			</div>
		</nav>
		<div class="slider">
			<div id="wrap">
				<ul>
					<li><div class="img"></div></li>
					<li><div class="img"></div></li>
					<li><div class="img"></div></li>
					<li><div class="img"></div></li>
					<li><div class="img"></div></li>
				</ul>
				<ol>
					<li><a href="#"></a></li>
					<li><a href="#"></a></li>
				</ol>
			</div>
		</div>
	</section>
	<footer>
		<p>&copy;copyright  2015 </p>
	</footer>
	<div class="popWrap">

		<div class="popCont popContUi loginWrap">
			<div class="popInner">
				<div class="titleWrap">
					<h1><span class="loginTit"><i>登录</i></span></h1>
				</div>

				<div class="popBody">
					<form name="frmLgn" id="frmLgn" class="loginCont" action="UserInfo_login.do" method="post" onsubmit="return true;">
						<div class="formInput">
							<label class="error" id="msg">${msg}</label>
							<label for="username">用户名:</label><input id="username" name="userInfoEntity.username" type="text" placeholder="用户名/邮箱/电话号码" required/>
							<label id="loginnameError" class="error">${errors.loginname }</label>
						</div>
						<div class="formInput">
							<label for="password">密码:</label><input id="password" name="userInfoEntity.password" type="text" placeholder="请输入密码" required/>
							<label id="passwordError" class="error">${errors.password}</label>
						</div>
						<div class="formInput">
							<label for="verify">验证码:</label><input id="verify" name="userInfoEntity.verifyCode" type="text" placeholder="请输入验证码" required/>
							<img id="imgVerifyCode" src="<c:url value='/VerifyCode_verify.do'/>"/>
                       		<a href="javascript:_hyz()">换一张</a>
							<p id="verifyCodeError" class="error">${errors.verifyCode}</p>
						</div>
						<div class="loginOpt">
							<a href="" class="btn">忘记密码？</a>
							<a href="<c:url value='/jsp/user/register.jsp'/>" class="btn">注册</a>
						</div>

						<input type="submit" value="登录"/>

					</form>

				</div>
			</div>
		</div>

	</div>
	<script src="js/index.js"></script>
	<script src="js/silder.js"></script>
</body>
</html>