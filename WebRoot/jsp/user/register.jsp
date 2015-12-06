<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>趣分期</title>
    <link rel="stylesheet" href="../../css/index.css" type="text/css"></link>
    <link rel="stylesheet" href="../../css/reset.css" type="text/css"></link>
    <link rel="stylesheet" href="../../css/register.css" type="text/css"></link>
    <script src="http://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
    <script src="http://int.dpool.sina.com.cn/iplookup/iplookup.php?format=js"type="text/ecmascript"></script>
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
            <li id="login">登陆</li><!--
			 --><li>注册</li><!--
			 --><li>个人中心</li>
        </ul>
    </nav>
    <div class="logo"><h4>地球表面最好的分期商城</h4><h1>趣分期 <span>网上商城</span></h1></div>
</header>
<section class="main">
    <div class="register">

            <div class="popCont popContUi loginWrap">
                <div class="popInner">
                    <div class="titleWrap">
                        <h1><span class="loginTit"><i>注册</i></span></h1>
                    </div>

                    <div class="popBody">
                        <form name="frmLgn" id="frmLgn" action="UserInfo_regist.do" method="post" class="loginCont" onsubmit="return true;">
                            <div class="formInput">
                                <label for="username">用户名:</label><input id="username" name="userInfoEntity.username" type="text" placeholder="用户名/邮箱/电话号码" required="required" value="${form.username }"/>
                                <p class="errorClass" id="loginnameError">${errors.loginname }</p>
                            </div>
                            <div class="formInput">
                                <label for="password">密码:</label><input id="password" name="userInfoEntity.password" type="password" placeholder="请输入密码" required="required" value="${form.password }"/>
                                <p class="errorClass" id="loginpassError">${errors.loginpass }</p>
                            </div>
                            <div class="formInput">
                                <label for="reloginpass">重复密码:</label><input id="reloginpass" name="userInfoEntity.reloginpass" type="password" placeholder="请确认密码" required="required" value="${form.reloginpass }"/>
                          	  	<p class="errorClass" id="reloginpassError">${errors.reloginpass}</p>
                            </div>
                            <div class="formInput">
                                <label for="email">邮箱:</label><input id="email" name="userInfoEntity.email" type="text" placeholder="请输入邮箱" required="required" value="${form.email }"/>
                                <p class="errorClass" id="emailError">${errors.email}</p>
                            </div>
                            <div class="formInput">
                                <label for="verify">验证码:</label><input id="verify" name="userInfoEntity.verifyCode" type="text" placeholder="请输入验证码" required="required" value="${form.verifyCode }"/>
                            	<p class="errorClass" id="verifyCodeError">${errors.verifyCode}</p>
                            </div>
                             <div id="divVerifyCode">
                             <img id="imgVerifyCode" src="<c:url value='/VerifyCode_verify.do'/>"/>
                             </div>
							<div>
							 <label><a href="javascript:_hyz()">换一张</a></label>
							</div>
                            <input type="submit" id="register"value="注册"/>

                        </form>

                    </div>
                </div>
            </div>

        </div>
</section>
<footer>
    <p>&copy;copyright  2015 </p>
</footer>

<script src="../../js/index.js"></script>
<script src="../../js/silder.js"></script>
</body>
</html>