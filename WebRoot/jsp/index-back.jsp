<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>趣分期管理系统</title>
<link href="${pageContext.request.contextPath }/css/bootstrap.min.css" rel="stylesheet" media="screen">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/style.css" />
<script src="${pageContext.request.contextPath }/js/jquery.js"></script>
<script src="${pageContext.request.contextPath }/js/bootstrap.min.js"></script>
</head>
<body>

	<div id="gdou" class="inline_div">
		<img src="${pageContext.request.contextPath }/images/qfq.png" width="300" height="80" />
	</div>

	<div id="" class="">

		<div id="navigation" class="inline_div">
			<ul class="nav nav-pills nav-stacked">
				<li role="presentation" class="active"><a href="backIndex.do">主页</a>
				</li>
				<li role="presentation" ><a href="showAllAdmin.do">管理员管理</a>
				</li>
				<li role="presentation" ><a href="showAllRole.do">角色管理</a>
				</li>
				<li role="presentation" ><a href="showAllGoods.do">商品管理</a>
				</li>
				<li role="presentation" ><a href="SJFX.HTML">用户数据分析</a>
				</li>
				<li role="presentation" ><a href="#">退出</a>
				</li>
			</ul>
		</div>

		<div id="main" class="inline_div">
			<ol class="breadcrumb">
				<li><a href="#">趣分期管理系统</a>
				</li>
				<li class="active">通知</li>
			</ol>
			<div class="list-group">
				<a href="#" class="list-group-item">12月01号系统维护</a> <a href="#"
					class="list-group-item">更新收益报表</a> <a href="#"
					class="list-group-item">2015年双12活动</a>
			</div>

		</div>
	</div>
	<div id="yw" class="">
		<center>
			<font color="#428BCA">Copyright &copy; 2015安室工作室版权所有</font>
		</center>
	</div>

</body>
</html>
