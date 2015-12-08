<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="/struts-tags"%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>趣分期购物天堂</title>
<link href="${pageContext.request.contextPath }/css/bootstrap.min.css" rel="stylesheet" media="screen"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/style.css" />
<script src="${pageContext.request.contextPath }/js/jquery.js"></script>
<script src="${pageContext.request.contextPath }/js/bootstrap.min.js"></script>
</head>
<body>

<div class="" >
<div id="xh" class="inline_div" >
<img src="${pageContext.request.contextPath }/img/xh.jpg" width="100" height="70"/>
</div>
<div id="gym" class="inline_div" >
<img src="${pageContext.request.contextPath }/img/qfq.png" width="220" height="50"/>	
</div>
<div id="sport" class="inline_div">
<img src="${pageContext.request.contextPath }/img/a.png" width="550" height="50"/>	
</div>
</div>

<div id="" class="">
<div id="" class="">
<img src="${pageContext.request.contextPath }/img/login-bg.jpg" width="1366" height="520"/>
</div>
<div class="loginwindow">
  
  <form  action="Admin_login.do" method="post" >
        <h2><b>登录/Login</b></h2>
		<hr>
		<br>
		<center>
        <label>用户名：&nbsp  </label><input type="username" name="adminEntity.name" class="username"  >
		<br>
		<br>
        <label>密&nbsp&nbsp码：&nbsp&nbsp </label><input type="password" name="adminEntity.password" class="password" >
        <div class="chooserole">
		<br>
        </div>
		<br>
	
        <label><input type="submit" value="登录" ></label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
		<label><input type="reset" name="reset" value="重置"></label>
        </center>	
		<br>
		<hr>

  </form>
</div>
</div>




<div id="yw" class="">
<center>
<font color="#428BCA">Copyright &copy; 2015安室工作室版权所有</font>
</center>
</div>



</body>
</html>
