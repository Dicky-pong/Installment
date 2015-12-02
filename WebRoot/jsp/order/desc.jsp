<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>订单详细</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="content-type" content="text/html;charset=utf-8">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="<c:url value='/jsps/css/order/desc.css'/>">
  </head>
  
<body>
	<div class="divOrder">
		<span>订单号：${order.orderId }

	<c:choose>
		<c:when test="${order.status eq 1}">(等待付款)</c:when>
		<c:when test="${order.status eq 2}">(准备发货)</c:when>
		<c:when test="${order.status eq 3}">(等待确认)</c:when>
		<c:when test="${order.status eq 4}">(交易成功)</c:when>
		<c:when test="${order.status eq 5}">(已取消)</c:when>
		
	</c:choose>
		　　　下单时间：${order.date }</span>
	</div>
	<div class="divContent">
		<div class="div2">
			<dl>
				<dt>收货人地址</dt>
				<dd>${order.address }</dd>
				<dt>联系人</dt>
				<dd>${order.receiver }</dd>
				<dt>联系电话电话</dt>
				<dd>${order.tel }</dd>
			</dl>
		</div>
		<div class="div2">
			<dl>
				<dt>商品清单</dt>
				<dd>
					<table cellpadding="0" cellspacing="0">
						<tr>
							<th class="tt">商品名称</th>
							<th class="tt" align="left">月供</th>
							<th class="tt" align="left">分期</th>
							<th class="tt" align="left">总价</th>
						</tr>

						<tr style="padding-top: 20px; padding-bottom: 20px;">
							<td class="td" width="400px">
								<div class="bookname">
								  <img align="middle" width="70" src="<c:url value='${order.goods.picture }'/>"/>
								  <a href="<c:url value='/BookServlet?method=load&bid=${order.goods.goodsId }'/>">${order.goods.name }</a>
								</div>
							</td>
							<td class="td" >
								<span>&yen;${order.payPrice }</span>
							</td>
							<td class="td">
								<span>&yen;${order.payPrice/order.payMonth}</span>
							</td>
							<td class="td">
								<span>&yen;${order.payPrice}</span>
							</td>			
						</tr>
					</table>
				</dd>
			</dl>
		</div>
		<div style="margin: 10px 10px 10px 550px;">
			<span style="font-weight: 900; font-size: 15px;">合计金额：</span>
			<span class="price_t">&yen;${order.payPrice }</span><br/>
<c:if test="${order.status eq 1}">
	<a href="<c:url value='/OrderServlet?method=paymentPre&oid='/>" class="pay"></a><br/>
</c:if>
<c:if test="${order.status eq 1 and btn eq 'cancel'}">
    <a id="cancel" href="<c:url value='/OrderServlet?method=cancel&oid='/>">取消订单</a><br/>
</c:if>
<c:if test="${order.status eq 3 and btn eq 'confirm'}">
	<a id="confirm" href="<c:url value='/OrderServlet?method=confirm&oid='/>">确认收货</a><br/>	
</c:if>
		</div>
	</div>
</body>
</html>

