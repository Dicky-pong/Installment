<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="/struts-tags"%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>趣分期后台管理系统</title>
<link href="${pageContext.request.contextPath }/css/bootstrap.min.css" rel="stylesheet" media="screen">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/login.css" />
<script src="${pageContext.request.contextPath }/js/jquery.js"></script>
<script src="${pageContext.request.contextPath }/js/bootstrap.min.js"></script>
</head>
<body>
<div class=yt>
	<img src="${pageContext.request.contextPath }/images/qfq.png" alt="" />
</div>
<center>
<div class="loginwindow ">
  <form action="Admin_login.do" method="post">
  	<span class ='login'>LOGIN/登陆</span>
  	<table>
  		<tr>
  			<td></td>
  			<td>
  			<label>${error }</label>
  			</td>
  		</tr>
  		<tr>
  			<td>账号</td><td><input type="username" name="adminEntity.name" class="username"/></td>
  		</tr>

  		<tr>
  			<td>密码</td>
  		    <td><input type="password" name="adminEntity.password" class="password" /></td>
  		</tr>
  
  	</table>
  	 <input id='jump' type="submit" value='登陆'>
  </form>

</div>
</center>





<div id="yw" class="">
<center>
<font color="#428BCA">Copyright &copy; 2014安室工作室版权所有</font>
</center>
</div>



</body>
  <script src="../js/login.js"></script>
</html>
