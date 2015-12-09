<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>订单管理</title>
<link href="${pageContext.request.contextPath }/css/bootstrap.min.css" rel="stylesheet" media="screen">
<link rel="stylesheet"  href="${pageContext.request.contextPath }/css/style.css" >
<link rel="stylesheet"  href="${pageContext.request.contextPath }/css/ddgl.css" />

</head>
<body>
<script src="${pageContext.request.contextPath }/js/jquery.js"></script>
<script src="${pageContext.request.contextPath }/js/bootstrap.min.js"></script>
<script>
function jump(){
 alert("删除成功");
 window.location.href="DDGL.html";
}
	
	function prePage(obj, page, status){
		if(page == '0'){
			alert("已经是第一页了");
			return false;
		}
		obj.href = 'myBackOrder.do?pageCode='+page+'&status='+status;
	}
	function nextPage(obj, page, max,status ){
		if(page > max){
			alert("已经是最后一页了");
			return false;
		}
		obj.href = 'myBackOrder.do?pageCode='+page+'&status='+status;
	}
</script>

<div id="gdou" class="inline_div" >
<img src="${pageContext.request.contextPath }/images/qfq.png"width="300" height="80" /> 
</div>

<div id="" class="">

<div id="" class="">

    <div id="navigation" class="inline_div">
      <ul class="nav nav-pills nav-stacked" role="tablist">
        <li role="presentation" >
          <a href="backIndex.do">主页</a>
        </li>
        <li role="presentation" >
          <a href="showAllAdmin.do">管理员管理</a>
        </li>
        <li role="presentation">
          <a href="showAllRole.do">角色管理</a>
        </li>
        <li role="presentation" class="active">
          <a href="showAllGoods.do">商品管理</a>
        </li>
        <li role="presentation">
          <a href="../sjgl/SJFX.html">用户数据分析</a>
        </li>
        <li role="presentation">
          <a href="Order_myBackOrder.do?status=-1">订单管理</a>
        </li>
        <li role="presentation">
          <a href="../Login.html">退出</a>
        </li>
      </ul>
    </div>

<div id="main" class="inline_div">
<ol class="breadcrumb">
  <li><a href="../index.html">趣分期后台管理系统</a></li>
  <li class="active">订单管理</li>
</ol>
<h3 align="center"><b>订单列表</b></h3>
 <span><a href="<c:url value='Order_myBackOrder.do?status=-1'/>" class='query-list'><u>全部订单</u></a></span>
 <span><a href="<c:url value='Order_myBackOrder.do?status=1'/>" class='query-list'><u>未付款</u></a> </span>  
 <span><a href="<c:url value='Order_myBackOrder.do?status=2'/>" class='query-list'><u>待发货</u></a> </span>
 <form action ="<c:url value='/Order_backCriteria.do'/>" id = "myform"  method="post">
<input  class='query-window'type="text" name="criteria" id="ip_keyword" value="" placeholder="商品名称/商品编号/订单号" style="color: rgb(204, 204, 204);"/>
<a class='query-picture'id="search_key" href="javascript:;"><img src="${pageContext.request.contextPath }/images/query.png"/>查询</a>
</form>
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
  <c:forEach items="${pb.beanList}" var="order">
  <tr>
    <th>${order.orderID}</th>
    <th>${order.goods.name }</th>
    <th>${order.color.colorname }</th>
    <th>${order.payPrice}</th>
    <th>${order.date}</th>
    <th>${order.userinfo.username}</th>
     <c:if test="${order.status eq 1 }">
	<th><span class='state-button'>待付款</span></th>
</c:if>
<c:if test="${order.status eq 2 }">
   <th><button class='state-button' onclick="window.location='${pageContext.request.contextPath }/Order_confirmOrder.do?id=${order.orderID}'">确认发货</button></th>
</c:if>
<c:if test="${order.status eq 3 }">
	<th><span class='state-button'>待收货</span></th>	
</c:if>
<c:if test="${order.status eq 4 }">
	<th><span class='state-button'>交易成功</span></th>	
</c:if>
<c:if test="${order.status eq 5 }">
	<th><span class='state-button'>已取消</span></th>	
</c:if>
    
    <th><a href="<c:url value='/Order_loadOrder.do?id=${order.orderID }'/>">详情</a></th>
  </tr>
  </c:forEach>
  
</table>
<div align="center">
<nav>
  <ul class="pagination">
  	
					<li><a href="#" onclick="prePage(this, ${pb.pageCode-1},${sta })">&laquo;</a>
					</li>
					<c:forEach begin="1" end="${pb.totalpage}" var="str" step="1">
						<li>
						<a href="myBackOrder.do?pageCode=${str }&status=${sta }">${str }</a>
						</li>
					</c:forEach>
					<li><a href="#" onclick="nextPage(this, ${pb.pageCode+1}, '${pb.totalpage }','${sta }')">&raquo;</a>
					</li>
				</ul>
</nav>
</div>

</div>
<div id="yw" class="">
<center>
Copyright &copy; 2014安室工作室版权所有
</center>
</div>
</body>
<script>
console.log($("#search_key"));
$("#search_key").bind("click",function(){
	console.log($("#ip_keyword").val() == "");
	if($("#ip_keyword").val() == ""){
		alert("请输入查询关键字！")
	}else{
		$("#myform").submit();
	}
	
	console.log("ninico")
	

});


</script>
</html>
