<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>数据管理</title>
<link href="../../css/bootstrap.min.css" rel="stylesheet" media="screen">
<link rel="stylesheet" type="text/css" href="../../css/style.css" />
<link rel="stylesheet" type="text/css" href="../../css/sjgl.css" />


</head>
<body>
	<script src="../../js/jquery.js"></script>
	<script src="../../js/bootstrap.min.js"></script>
	<script src="http://echarts.baidu.com/build/dist/echarts.js"></script>



	<div id="gdou" class="inline_div">
		<img src="../../images/qfq.png" width="300" height="80" />
	</div>

	<div id="" class="">

		<div id="navigation" class="inline_div">
			<ul class="nav nav-pills nav-stacked" role="tablist">
				<li role="presentation"><a href="backIndex.do">主页</a>
				</li>
				<li role="presentation"><a href="showAllAdmin.do">管理员管理</a>
				</li>
				<li role="presentation"><a href="showAllRole.do">角色管理</a>
				</li>
				<li role="presentation"><a href="showAllGoods.do">商品管理</a>
				</li>
				<li role="presentation" class="active"><a
					href="../sjgl/SJFX.html">用户数据分析</a>
				</li>
				<li role="presentation"><a
					href="Order_myBackOrder.do?status=-1">订单管理</a>
				</li>
				<li role="presentation"><a href="../Login.html">退出</a>
				</li>
			</ul>
		</div>

		<div id="main" class="inline_div">
			<ol class="breadcrumb">
				<li><a href="backIndex.do">趣分期后台管理系统</a>
				</li>
				<li class="active">数据分析</li>
			</ol>
			<div class='title'>

				<!--  <span class='query-list' id='user'>用户地域分布图  </span> -->
				<span class='query-list' id='salesVolume'>各月份销量对比</span><select
					name='stytle1'><option>iPhone6</option>
				</select> <select name='stytle2'><option>iPhone6s</option>
				</select><span id='query'>查询</span>
			</div>
			<div id='canvasDiv' style="height:400px"></div>




		</div>
		<div id="yw" class="">
			<center>Copyright &copy; 2014安室工作室版权所有</center>
		</div>
</body>
<script src="../../js/date.js"></script>
</html>