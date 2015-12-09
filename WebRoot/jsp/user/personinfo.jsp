<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>农资联盟杯</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/index.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/reset.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/personCenter.css">
    <script src="http://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
    <script>
        (function(){
            if (typeof jQuery == 'undefined') {
                document.write(unescape("%3Cscript src='js/jquery-2.1.4.min.js' type='text/javascript'%3E%3C/script%3E"));
            }
        })()
    </script>
    <style>
        .main {
            background: #f2f2f2;

        }
        .container {
            width:960px;
            margin: 0 auto;
        }
        
        .personinfotable {
            margin-left: 200px;
        }
        
        .personinfotable tr td {
            padding-left: 20px;
            height: 30px;
            
        }
        
        .container {
            padding-top: 50px;
        } 

        .infoshow {
            background: #FFF;
            padding: 20px;
            border-radius: 5px;
        }

        .infoshow h1 {
            font-size: 20px;
            font-weight: 200;
            border-bottom: 1px solid #CACACA;
            padding-bottom: 10px;
        }

        .infoshow table {
            margin-top: 20px;
            width: 100%;
        }

        .infoshow table tr.bg {
            background: #F9F9F9;
            border: 1px solid #E2E2E2;
        }

        .infoshow table tr.bg td {
            height: 30px;
        }

        .infoshow table tr td {
            height: 10px;
        }

        .infoshow table tr td a {
            float: right;
            margin-right: 30px;
        }
    </style>
</head>
<body>
<header>
		<nav class="top_nav">
			<ul class="tn_left">
			<c:choose>
			<c:when test="${sessionUser.username eq null }"><li id="login">登录/注册</li></c:when>
			<c:otherwise><li>您好，${sessionUser.username }</li></c:otherwise>
	</c:choose>
			 <li><a href="<c:url value='/Order_myOrder.do?status=-1'/>">我的订单</a></li>
			 <li><a href="<c:url value='/jsp/user/personinfo.jsp'/>">个人中心</a></li>
			 <c:if test="${sessionUser.username ne null }"><li class="lilast"><a href="<c:url value='/UserInfo_quit.do'/>">退出登录</a></li></c:if>
			</ul>
		</nav>
		<div class="logo"><h4>地球表面最好的分期商城</h4><h1>趣分期 <span>网上商城</span></h1></div>
	</header>
<section class="main">

    <section class="container">
        <div class="infoshow">
            <h1>安全信息</h1>
            <table>
                <tr class="bg">
                    <th>用户名</th>
                    <td>${sessionUser.username } </td>                    
                </tr>
                <tr>
                    <th></th>
                    <td></td>
                </tr>
                <tr class="bg">
                    <th>绑定的邮箱</th>
                    <td>${sessionUser.email } <a href="javascript:;">修改</a></td>
                </tr>
                <tr>
                    <th></th>
                    <td></td>
                </tr>
                <tr  class="bg">
                    <th>密码</th>
                    <td>*******<a href="<c:url value='/jsp/user/resetPassword.jsp'></c:url>">修改</a></td>
                </tr>
                
                
               
            </table>
        </div>
    </section>
</section>
<footer>
    <h4>农资联盟杯作品展示小demo</h4>
    <p>&copy;copyright EarlTechnology 2015 </p>
</footer>
<script src="js/index.js"></script>
<script src="js/goodslist.js"></script>
</body>
</html>