<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>订单管理</title>
<link href="${pageContext.request.contextPath }/css/bootstrap.min.css" rel="stylesheet" media="screen">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/style.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/ddgl.css" />

</head>
<body>
<script src="${pageContext.request.contextPath }/js/jquery.js"></script>
<script src="${pageContext.request.contextPath }/js/bootstrap.min.js"></script>
<script>
function jump(){
 alert("删除成功");
 window.location.href="DDGL.html";
}
<script>
	
	
	function prePage(obj, page, type, brand, categoryId4Search){
		if(page == '0'){
			alert("已经是第一页了");
			return false;
		}
		obj.href = 'showAllGoods.do?currentPage='+page+'&goodsName='+type+'&goodsBrand='+brand+'&categoryId4Search='+categoryId4Search;
	}
	function nextPage(obj, page, max, type, brand, categoryId4Search){
		if(page > max){
			alert("已经是最后一页了");
			return false;
		}
		obj.href = 'showAllGoods.do?currentPage='+page+'&goodsName='+type+'&goodsBrand='+brand+'&categoryId4Search='+categoryId4Search;
	}
</script>
</script>

<div id="gdou" class="inline_div" >
<img src="${pageContext.request.contextPath }/images/qfq.png"width="300" height="80" /> 
</div>

<div id="" class="">

<div id="navigation" class="inline_div">
<ul class="nav nav-pills nav-stacked" role="tablist">
  <li role="presentation" ><a href="../index.html">主页</a></li>
  <li role="presentation" ><a href="../glygl/GLYGL.html">管理员管理</a></li>
  <li role="presentation"><a href="../glygl/JSGL.html">角色管理</a></li>
  <li role="presentation"><a href="../spgl/SPGL.html">商品管理</a></li>
  <li role="presentation"><a href="../sjgl/SJFX.html">用户数据分析</a></li>
  <li role="presentation" class="active"><a href="Order_findAllOrder.do?pageCode=1">订单管理</a></li>
  <li role="presentation"><a href="../Login.html">退出</a></li>
</ul>   
</div>

<div id="main" class="inline_div">
<ol class="breadcrumb">
  <li><a href="../index.html">趣分期后台管理系统</a></li>
  <li class="active">订单管理</li>
</ol>
<h3 align="center"><b>订单列表</b></h3>
 <span class='query-list'><u>全部订单</u>  </span><span class='query-list'><u>未付款</u></span>  <span class='query-list'><u>待发货</u></span>
<input  class='query-window'type="text" name="" id="" /><a class='query-picture'
href="equipment-query.html"><img src="${pageContext.request.contextPath }/images/query.png">查询</a>
<table class="table table-hover">
<tr>
    <th>订单号 </th>
    <th>商品名称</th>
	<th>颜色</th>
    <th>总价</th>
    <th>下单时间</th>
    <th>收货人</th>
    <th>状态</th>
    <th></th>
  </tr>
  <c:forEach items="${orders}" var="order">
  <tr>
    <th>${order.orderId}</th>
    <th>${order.goods.name }</th>
    <th>${order.color.colorname }</th>
    <th>${order.payPrice}</th>
    <th>${order.date}</th>
    <th>${order.userinfo.username}</th>
    <th><button class='state-button'>已发货</button></th>
    <th><a href="order-detail.html">详情</a></th>
  </tr>
  </c:forEach>
  
</table>
<center>
<nav>
  <ul class="pagination">
    <li><a href="#">&laquo;</a></li>
    <li><a href="#">1</a></li>
    <li><a href="#">2</a></li>
    <li><a href="#">3</a></li>
    <li><a href="#">4</a></li>
    <li><a href="#">5</a></li>
    <li><a href="#">&raquo;</a></li>
  </ul>
</nav>
</center>

</div>
<div id="yw" class="">
<center>
Copyright &copy; 2014安室工作室版权所有
</center>
</div>



</body>
</html>
