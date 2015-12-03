<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>角色管理</title>
<link href="../../css/bootstrap.min.css" rel="stylesheet" media="screen">
<link rel="stylesheet" type="text/css" href="../../css/style.css" />
<link rel="stylesheet" type="text/css" href="../../css/jsgl.css" />
<script>
	function jump() {
		alert("删除成功");
		window.location.href = "JSGL.html";
	}
</script>

</head>
<body>
	<script src="../../js/jquery.js"></script>
	<script src="../../js/bootstrap.min.js"></script>

	<div id="gdou" class="inline_div">
		<img src="../../image/qfq.png" width="300" height="80" />
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
				<li><a href="../index.html">趣分期后台管理</a>
				</li>
				<li class="active">角色管理</li>
			</ol>
			<h3 align="center">
				<b>角色表</b>
			</h3>
			<table class="table table-hover">
				<tr>
					<th>&nbsp</th>
					<th>角色ID</th>
					<th>角色名</th>
					<th></th>
				</tr>
				<tr>
					<th><input type="checkbox" name="choose">
					</th>
					<th>100001</th>
					<th>商品管理员</th>
					<th><a href="role-update.html">更新</a></th>


				</tr>
				<tr>
					<th><input type="checkbox" name="choose">
					</th>
					<th>100002</th>
					<th>数据管理员</th>
					<th><a href="role-update.html">更新</a></th>

				</tr>
				<tr>
					<th><input type="checkbox" name="choose">
					</th>
					<th>100003</th>
					<th>订单管理员</th>
					<th><a href="role-update.html">更新</a></th>


				</tr>
				</tr>
			</table>
			<center>
				<div id="" class="">
					<div class="operationbutton">
						<a href="role-add.html"><img src="../../image/add.png">添加</a>
					</div>
					<div class="operationbutton">
						<a href="JSGL.html" onclick="jump()"><img
							src="../../image/delect.png">删除</a>
					</div>

				</div>
				<nav>
				<ul class="pagination">
					<li><a href="#">&laquo;</a>
					</li>
					<li><a href="#">1</a>
					</li>
					<li><a href="#">2</a>
					</li>
					<li><a href="#">3</a>
					</li>
					<li><a href="#">4</a>
					</li>
					<li><a href="#">5</a>
					</li>
					<li><a href="#">&raquo;</a>
					</li>
				</ul>
				</nav>
			</center>

		</div>
		<div id="yw" class="">
			<center>Copyright &copy; 2014安室工作室版权所有</center>
		</div>
</body>
</html>
