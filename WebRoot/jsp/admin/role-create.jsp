<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>添加管理员用户</title>
<link href="${pageContext.request.contextPath }/css/bootstrap.min.css" rel="stylesheet" media="screen">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/style.css" />
<script src="${pageContext.request.contextPath }/js/jquery.js"></script>
<script src="${pageContext.request.contextPath }/js/bootstrap.min.js"></script>
<script>
	function jump() {
		alert("添加角色成功");
		window.location.href = "JSGL.html";
	}
</script>
</head>
<body>

	<div id="gdou" class="inline_div">
		<img src="${pageContext.request.contextPath }/imagess/qfq.png" width="300" height="80" />
	</div>

	<div id="" class="">

		<div id="navigation" class="inline_div">
			<ul class="nav nav-pills nav-stacked" role="tablist">
				<li role="presentation"><a href="../index.html">主页</a>
				</li>
				<li role="presentation"><a href="../glygl/GLYGL.html">管理员管理</a>
				</li>
				<li role="presentation" class="active"><a
					href="../glygl/JSGL.html">角色管理</a>
				</li>
				<li role="presentation"><a href="../spgl/SPGL.html">商品管理</a>
				</li>
				<li role="presentation"><a href="../sjgl/SJFX.html">用户数据分析</a>
				</li>
				<li role="presentation"><a href="../ddgl/DDGL.html">订单管理</a>
				</li>
				<li role="presentation"><a href="../Login.html">退出</a>
				</li>
			</ul>
		</div>

		<div id="main" class="inline_div">
			<ol class="breadcrumb">
				<li><a href="../index.html">趣分期后台管理系统</a>
				</li>
				<li><a href="JSGL.html">角色管理</a>
				</li>
				<li class="active">添加角色</li>
			</ol>
			<center>
				<div id="" class="adregistration-form">
					<h3>
						<b>角色登记表</b>
					</h3>
					<form id="message">
						<table class="sj">
							<td>角色ID</td>
							<td><input type="text" name="administrator-number"
								value="11010" readonly /></td>
							<tr>
								<td>角色名</td>
								<td><input type="text" name="name" value=""
									placeholder="必填" /></td>
							</tr>

						</table>

						<br>
						<button type="button" class="btn btn-default" onclick="jump()">提交</button>
						&nbsp&nbsp&nbsp
						<button type="reset" class="btn btn-default">重置</button>
					</form>


				</div>
			</center>





		</div>

	</div>

	<div id="yw" class="">
		<center>Copyright &copy; 2014安室工作室版权所有</center>
	</div>



</body>
<script src="${pageContext.request.contextPath }/js/role-add.js"></script>
</html>

