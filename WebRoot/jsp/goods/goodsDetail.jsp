<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %> 

<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>趣分期</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath }/css/index.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/css/reset.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/css/goodinfo.css">
	<script src="http://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
	<script>
		(function(){
			if (typeof jQuery == 'undefined') {
 				document.write(unescape("%3Cscript src='js/jquery-2.1.4.min.js' type='text/javascript'%3E%3C/script%3E"));
			}
		})()
		
	</script>
</head>
<body>
	<header>
		<nav class="top_nav">
			<ul class="tn_left">
				<li>快捷导航1</li><!--
			 --><li>快捷导航2</li><!--
			 --><li>快捷导航3</li>
			</ul>
		</nav>
		<div class="logo"><h4>地球表面最好的分期商城</h4><h1>趣分期 <span>网上商城</span></h1></div>
	</header>
	<section class="main">
		<nav class="main_nav">
			<div class="first_class">
				<ul>
					<c:forEach items="${requestScope.categoryList }" var="category">
						<li>${category.name }</li><div class="bd"></div>
					</c:forEach>
				</ul>
			</div>
			<div class="show_class">
				<c:forEach items="${requestScope.categoryList }" var="category" varStatus="status">
					
					<div id="wrapper0${status.count }" class="section">
					<div class="title_bg">
						<div class="title"><img src="${pageContext.request.contextPath }/img/gnb_banner_line.gif" alt="">
							<ul>
								<c:forEach items="${category.categories }" var="category2">
									<li><a href="showGoods.do?searchOption=&categoryId4Search=${category2.id }">${category2.name}</a></li>
								</c:forEach>
							</ul>
						</div>
					</div>
					<div class="other_class">
						<div class="other_bg">
							<img src="${pageContext.request.contextPath }/img/GNB_BANNER_DST_150807.jpg" alt="">
						</div>
					</div>
					</div>
				</c:forEach>
				
			</div>
		</nav>
		<section class="container">
			<div id="goodinfomain">

				<div id="zoom">
					<div id="zoomMiddle"><img src="${pageContext.request.contextPath }${goods.picture}" alt=""><div id="make"></div></div>

					<div id="zoomSmall">
						<span class='left'>&lt;</span>

						<div id="zoomSmallImg">
							<ul>
								<li class="curr" ><img src="${pageContext.request.contextPath }${goods.picture}" alt=""></li>
							
							</ul>
						</div>
						<span class='right'>&gt;</span>
					</div>
					<div id="zoomLa"><img src="${pageContext.request.contextPath }${goods.picture}" alt=""></div>
				</div>
				<div class="goodinfo">
					<input type="hidden" value="${goods.id }" id="goodsId">
					<h1>${goods.name }</h1>
					<hr/>
					<table class="goodmoreinfo">
						<tr>
							<th>品牌</th>
							<td> ${goods.brand }</td>
						</tr>
						<tr>
							<th>价格</th>
							<td id="price"> ${goods.goodstypes.iterator().next().price }</td>
						</tr>
						<tr>
							<th>类型</th>
							<td>
							<c:forEach items="${goods.goodstypes }" var="goodstype">
								<span value="${goodstype.id }" name="goodstypeSpans" class="select type" data-price="${goodstype.price }" data-num="${goodstype.count }"> ${goodstype.typename }</span>
							</c:forEach>
							</td>
							
						</tr>
						<tr class="imgShow">
							<th>颜色分类</th>
							<td>
							<%--<img src="${pageContext.request.contextPath }/img/1m.jpg" alt="" class="goodimg active"/>
								<img src="${pageContext.request.contextPath }/img/2m.jpg" alt="" class="goodimg"/>--%>
								<c:forEach items="${goods.colors }" var="color">
								  <span name="colorSpans" class="select color" value="${color.id }">${color.colorname }</span>
								</c:forEach>
								</td>
						</tr>
						<tr>
							<th>分期选择</th>
							<td>
							  <c:forEach items="${requestScope.goods.monthprovides }" var="month">
							    <span name="monthSpans" class="select monthp" value="${month.id }">${month.months }*<fmt:formatNumber type="number" value="${month.unitPrice } " maxFractionDigits="2"/></span>
							  </c:forEach>
							</td>
						</tr>
						<tr>
							<th>剩余数量</th>
							<td><%--<input type="number" value="0"/>--%>
							<span id="num">${goods.goodstypes.iterator().next().count }</span>
							</td>
						</tr>
						<tr>
							<th></th>
							<td></td>
						</tr>
					</table>

					<div class="btns">
						<input type="button" value="直接购买" id="buy" />
						<%--<input type="button" value="加入购物车" id="add"/>
						<input type="button" value="收藏" id="sc"/>
					--%></div>
				</div>
				<div class="clr"></div>
				<div class="gooddetails">
					<h1>商品详情</h1>
					<div class="content">
						<ul>
							<li class="active">商品详情</li>
							<%--<li>评价</li>
							--%><li>交易记录</li>
						</ul>


						<div class="active info">${goods.descript }</div>
						<div class="info">jQurey简介...</div>
						<div class="info">php 介绍。。。</div>
					</div>
				</div>
			</div>

		</section>
	</section>
	<footer>
		<h4>农资联盟杯作品展示小demo</h4>
		<p>&copy;copyright EarlTechnology 2015 </p>
	</footer>
	<script src="${pageContext.request.contextPath }/js/index.js"></script>
	<script src="${pageContext.request.contextPath }/js/goodinfo.js"></script>
</body>
</html>
