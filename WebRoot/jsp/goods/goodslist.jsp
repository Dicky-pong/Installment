<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>趣分期</title>

	<link rel="stylesheet" href="${pageContext.request.contextPath }/css/index.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/css/reset.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/css/goodslist.css">
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
			 --><li><a href="http://localhost/Installment/Order_myOrder.do">我的订单</a></li><!--
			 --><li>快捷导航3</li>
			</ul>
		</nav>
		<div class="logo"><h4>地球表面最好的农贸商城</h4><h1>农资联盟 <span>网上商城</span></h1></div>
	</header>
	<section class="main">
		<nav class="main_nav">
			<div class="first_class">
				<ul>
					<c:forEach items="${requestScope.categoryList }" var="category">
						<li>${category.name }</li><div class="bd"></div>
					</c:forEach>
				</ul>
				<%--<ul>
					<li>一级菜单1</li><div class="bd"></div><!--
				 --><li>一级菜单2</li><div class="bd"></div><!--
				 --><li>一级菜单3</li><div class="bd"></div><!--
				 --><li>一级菜单4</li><div class="bd"></div><!--
				 --><li>一级菜单5</li><div class="bd"></div><!--
				 --><li>一级菜单6</li><div class="bd"></div><!--
				 --><li>一级菜单7</li><div class="bd"></div><!--
			     --><li>一级菜单8</li>
				</ul>
			--%></div>
			<div class="show_class">
				<c:forEach items="${requestScope.categoryList }" var="category" varStatus="status">
					
					<div id="wrapper0${status.count }" class="section">
					<div class="title_bg">
						<div class="title"><img src="${pageContext.request.contextPath }/img/gnb_banner_line.gif" alt="">
							<ul>
								<c:forEach items="${category.categories }" var="category2">
									<li><a href="http://localhost:8080/Installment/showGoods.do?categoryId=${category2.id }">${category2.name}</a></li>
								</c:forEach>
							</ul>
						</div>
					</div>
					<%--<div class="other_class">
						<div class="other_bg">
							<img src="${pageContext.request.contextPath }/img/GNB_BANNER_DST_150807.jpg" alt="">
							<ul>
								<li>三级菜单1</li>
								<li>三级菜单2</li>
								<li>三级菜单3</li>
								<li>三级菜单4</li>
								<li>三级菜单5</li>
								<li>三级菜单6</li>
								<li>三级菜单7</li>
								<li>三级菜单8</li>
								<li>三级菜单9</li>
							</ul>
							<ul>
								<li>三级菜单1</li>
								<li>三级菜单2</li>
								<li>三级菜单3</li>
								<li>三级菜单4</li>
								<li>三级菜单5</li>
								<li>三级菜单6</li>
								<li>三级菜单7</li>
								<li>三级菜单8</li>
								<li>三级菜单9</li>
							</ul>
							
                        
						</div>
					</div>
				--%></div>
				</c:forEach>
				
				<div id="wrapper02" class="section">
					<div class="title_bg">
						<div class="title"><img src="${pageContext.request.contextPath }/img/gnb_banner_line.gif" alt="">
							<ul><!--
							--><li>二级菜单1</li><!--
							--><li>二级菜单2</li><!--
							--><li>二级菜单3</li><!--
							--><li>二级菜单4</li><!--
						    --><li>二级菜单5</li>
							</ul>
						</div>
					</div>
					<div class="other_class">
						<div class="other_bg">
							<img src="${pageContext.request.contextPath }/img/GNB_BANNER_DST_150807.jpg" alt="">
							<ul>
								<li>三级菜单1</li>
								<li>三级菜单2</li>
								<li>三级菜单3</li>
								<li>三级菜单4</li>
								<li>三级菜单5</li>
								<li>三级菜单6</li>
								<li>三级菜单7</li>
								<li>三级菜单8</li>
								<li>三级菜单9</li>
							</ul>
							<ul>
								<li>三级菜单1</li>
								<li>三级菜单2</li>
								<li>三级菜单3</li>
								<li>三级菜单4</li>
								<li>三级菜单5</li>
								<li>三级菜单6</li>
								<li>三级菜单7</li>
								<li>三级菜单8</li>
								<li>三级菜单9</li>
							</ul>
							<ul>
								<li>三级菜单1</li>
								<li>三级菜单2</li>
								<li>三级菜单3</li>
								<li>三级菜单4</li>
								<li>三级菜单5</li>
								<li>三级菜单6</li>
								<li>三级菜单7</li>
								<li>三级菜单8</li>
								<li>三级菜单9</li>
							</ul>
	                        <ul>
								<li>三级菜单1</li>
								<li>三级菜单2</li>
								<li>三级菜单3</li>
								<li>三级菜单4</li>
								<li>三级菜单5</li>
								<li>三级菜单6</li>
								<li>三级菜单7</li>
								<li>三级菜单8</li>
								<li>三级菜单9</li>
							</ul>
                            <ul>
								<li>三级菜单1</li>
								<li>三级菜单2</li>
								<li>三级菜单3</li>
								<li>三级菜单4</li>
								<li>三级菜单5</li>
								<li>三级菜单6</li>
								<li>三级菜单7</li>
								<li>三级菜单8</li>
								<li>三级菜单9</li>
							</ul>
                        
						</div>
					</div>
				</div>
				
			</div>
		</nav>
		<section class="container">
			<div class="class_selection_container">
				<div class="ad_img"></div>
				<div class="class_selection">
					<ul>
						<li><a href="javascript:;">二级分类1</a></li><!--
					 --><li><a href="javascript:;">二级分类2</a></li><!--
					 --><li><a href="javascript:;">二级分类3</a></li><!--
					 --><li><a href="javascript:;">二级分类4</a></li><!--
					 --><li><a href="javascript:;">二级分类5</a></li><!--
					 --><li><a href="javascript:;">二级分类6</a></li>
					</ul>
					<ol>
						<li><a href="javascript:;">三级分类1</a></li><!--
					 --><li><a href="javascript:;">三级分类2</a></li><!--
					 --><li><a href="javascript:;">三级分类3</a></li><!--
					 --><li><a href="javascript:;">三级分类4</a></li><!--
					 --><li><a href="javascript:;">三级分类5</a></li><!--
					 --><li><a href="javascript:;">三级分类6</a></li><!--
					 --><li><a href="javascript:;">三级分类7</a></li><!--
					 --><li><a href="javascript:;">三级分类8</a></li><!--
				     --><li><a href="javascript:;">三级分类9</a></li>
					</ol>
				</div>
			</div>

			<div class="classification">
				<div class="title">三级分类*共1333件商品</div>
				<div class="classification_attr">
					<div class="attrname">属性1</div>
					<ul>
						<li>选项1</li><!--
					 --><li>选项2</li><!--
					 --><li>选项3</li><!--
					 --><li>选项4</li><!--
					 --><li>选项5</li><!--
					 --><li>选项6</li><!--
					 --><li>选项7</li><!--
					 --><li>选项8</li><!--
					 --><li>选项9</li><!--
					 --><li>选项10</li><!--
					 --><li>选项11</li><!--
					 --><li>选项12</li><!--
					 --><li>选项13</li><!--
					 --><li>选项14</li><!--
					 --><li>选项15</li><!--
				     --><li>选项16</li>
					</ul>						
				</div>
				<div class="classification_attr">
					<div class="attrname">属性1</div>
					<ul>
						<li>选项1</li><!--
					 --><li>选项2</li><!--
					 --><li>选项3</li><!--
					 --><li>选项4</li><!--
					 --><li>选项5</li><!--
					 --><li>选项6</li>
					</ul>						
				</div>
				<div class="classification_attr">
					<div class="attrname">属性1</div>
					<ul>
						<li>选项1</li><!--
					 --><li>选项2</li><!--
					 --><li>选项3</li><!--
					 --><li>选项4</li><!--
					 --><li>选项5</li><!--
					 --><li>选项6</li><!--
					 --><li>选项7</li><!--
					 --><li>选项8</li><!--
					 --><li>选项9</li><!--
					 --><li>选项10</li><!--
					 --><li>选项11</li><!--
					 --><li>选项12</li>
					</ul>						
				</div>
			</div>

			<div class="goods_list">
				<div class="sort">
					<ul>
						<li class="focus">排序方式1</li><!--
					 --><li>排序方式2</li><!--
					 --><li>排序方式3</li><!--
				     --><li>排序方式4</li>
					</ul>
				</div>
				
				<div class="goods_show">
					<ul>
						<c:forEach var="goods" items="${requestScope.goodsList }">
							<li>
								<div class="good_img"><img src="${pageContext.request.contextPath }${goods.picture}" alt=""></div>
								<a href="" class="name">${goods.name }</a>
								<%-- 有一个mothprovide是空的就报异常 --%>
								<c:if test="${goods.monthprovides.iterator().hasNext()}" >
									<c:set var="monthprovide" value="${goods.monthprovides.iterator().next()}" scope="page"/>
									<span class="price">￥${monthprovide.unitPrice }*${monthprovide.months }期</span>
								</c:if>
							</li>
						</c:forEach>
					</ul>
				</div>
			</div>
		</section>
	</section>
	<footer>
		<h4>农资联盟杯作品展示小demo</h4>
		<p>&copy;copyright EarlTechnology 2015 </p>
	</footer>
	<script src="${pageContext.request.contextPath }/js/index.js"></script>
	<script src="${pageContext.request.contextPath }/js/goodslist.js"></script>
</body>
</html>