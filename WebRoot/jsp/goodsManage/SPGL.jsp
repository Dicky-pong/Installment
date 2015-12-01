<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>商品管理</title>
<link href="${pageContext.request.contextPath }/css/bootstrap.min.css" rel="stylesheet" media="screen">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/style.css" />
<script>
	function jump() {
		alert("删除成功");
		window.location.href = "SPGL.html";
	}
	function prePage(obj, page, type, brand, categoryId){
		if(page == '0'){
			alert("已经是第一页了");
			return false;
		}
		obj.href = 'showAllGoods.do?currentPage='+page+'&equipType='+type+'&equipBrand='+brand+'&categoryId='+categoryId;
	}
	function nextPage(obj, page, max, type, brand, categoryId){
		if(page > max){
			alert("已经是最后一页了");
			return false;
		}
		obj.href = 'showAllGoods.do?currentPage='+page+'&equipType='+type+'&equipBrand='+brand+'&categoryId='+categoryId;
	}
</script>

</head>
<body>
	<script src="${pageContext.request.contextPath }/js/jquery.js"></script>
	<script src="${pageContext.request.contextPath }/js/bootstrap.min.js"></script>

	<div id="gdou" class="inline_div">
		<img src="${pageContext.request.contextPath }/image/qfq.png" width="300" height="80" />
	</div>

	<div id="" class="">

		<div id="navigation" class="inline_div">
			<ul class="nav nav-pills nav-stacked" role="tablist">
				<li role="presentation"><a href="../index.html">主页</a>
				</li>
				<li role="presentation"><a href="../glygl/GLYGL.html">管理员管理</a>
				</li>
				<li role="presentation"><a href="../glygl/JSGL.html">角色管理</a>
				</li>
				<li role="presentation" class="active"><a
					href="../spgl/SPGL.html">商品管理</a>
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
				<li class="active">商品管理</li>
			</ol>
			<h3 align="center">
				<b>商品详情</b>
			</h3>
			<table class="table table-hover">
				<tr>
					<th>&nbsp</th>
					<th>商品ID</th>
					<th>商品名称</th>
					<th>品牌名称</th>
					<th>上市时间</th>
					<th>分类</th>
					<th></th>
				</tr>
				<c:forEach var="goods" items="${requestScope.goodsList }" >
				  <tr>
					<th><input type="checkbox" name="choose">
					</th>
					<th>${goods.goodsID }</th>
					<th>${goods.name }</th>
					<th>${goods.brand }</th>
					<th>${goods.date.year+1900}-${goods.date.month+1}-${goods.date.date}</th>
					<th>${goods.category.category.name}/${goods.category.name }</th>
					<th><a href="showGoods.do?goodsId=${goods.id }">详情</a>
					</th>
				</tr>
				</c:forEach>
				
			</table>
			<center>
				<nav>
				<ul class="pagination">
					<li><a href="#" onclick="prePage(this, ${page.currentPage-1},'${requestScope.goods.name }','${requestScope.goods.brand }','${requestScope.categoryId }')">&laquo;</a>
					</li>
					<c:forEach begin="1" end="${requestScope.page.totalPage}" var="str" step="1">
						<li>
						<a href="showAllGoods.do?currentPage=${str }&equipType=${requestScope.equipType }&equipBrand=${requestScope.equipBrand }">${str }</a>
						</li>
					</c:forEach>
					<li><a href="#" onclick="nextPage(this, ${page.currentPage+1}, ${page.totalPage },'${requestScope.goods.name }','${requestScope.goods.brand }','${requestScope.categoryId }')">&raquo;</a>
					</li>
				</ul>
				</nav>
			</center>
			<div id="" class="">
				<div class="operationbutton">
					<a href="toCreateGoods.do"><img src="${pageContext.request.contextPath }/images/add.png">添加</a>
				</div>
				<div class="operationbutton">
					<a href="SPGL.html" onclick="jump()"><img
						src="${pageContext.request.contextPath }/images/delect.png">删除</a>
				</div>
				<div class="operationbutton">
					<a href="goods-update.html"><img src="${pageContext.request.contextPath }/images/update.png">更新</a>
				</div>
				<div class="operationbutton">
					<a href="goods-query.html"><img src="${pageContext.request.contextPath }/images/query.png">查询</a>
				</div>

			</div>

		</div>
		<div id="yw" class="">
			<center>Copyright &copy; 2014安室工作室版权所有</center>
		</div>
</body>
</html>
