<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %> 

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
		function prePage(obj, page, searchOption, categoryId4Search){
		if(page == '0'){
			alert("已经是第一页了");
			return false;
		}
		obj.href = 'showGoods.do?currentPage='+page+'&searchOption='+searchOption+'&categoryId4Search='+categoryId4Search;
	}
	function nextPage(obj, page, max, searchOption, categoryId4Search){
		if(page > max){
			alert("已经是最后一页了");
			return false;
		}
		obj.href = 'showGoods.do?currentPage='+page+'&searchOption='+searchOption+'&categoryId4Search='+categoryId4Search;
	}
	function searchFun(obj) {
		var searchOption = document.getElementById("key").value;
		var searchForm = document.getElementById("searchForm");
		//searchForm.action = 'showGoods.do';
		searchForm.submit();
		//obj.href = 'showAllGoods.do?searchOption='+searchOption;
	}
	</script>
</head>
<body>
	<header>
		<nav class="top_nav">
			<ul class="tn_left">
				<li>快捷导航1</li><!--
			 --><li><a href="Order_myOrder.do?status=-1">我的订单</a></li><!--
			 --><li>快捷导航3</li>
			</ul>
		</nav>
		<div class="logo"><h4>地球表面最好的分期商城</h4><h1>趣分期 <span>网上商城</span></h1></div>
	</header>
	<section class="main">
	<div class="form">
		<form action="showGoods.do" id="searchForm" method="post">
			<input type="hidden" value="" name="categoryId4Search">
			<input type="text" class="text" accesskey="s" name="searchOption" id="key" autocomplete="off" value="" placeholder="搜索商品名称或商品品牌名">
			<i><input class="button cw-icon" onclick="searchFun(this)">
				</i>
		</form>	
	</div>
	
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
			<div class="class_selection_container">
				<div class="ad_img"></div>
				<div class="class_selection">
					<ul>
						<c:forEach items="${requestScope.categoryList }" var="category"> 
							<li><a href="javascript:;">${category.name }</a></li>
						</c:forEach>
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

			<div class="goods_list">
				
				<div class="goods_show">
					<ul>
						<c:forEach var="goods" items="${requestScope.goodsList }">
							<li>
								<div class="good_img"><img src="${pageContext.request.contextPath }${goods.picture}" alt=""></div>
								<a href="showGoodsDetail.do?goodsId=${goods.id }" class="name">${goods.name }</a>
								<%-- 有一个mothprovide是空的就报异常 --%>
								<c:if test="${goods.monthprovides.iterator().hasNext()}" >
									<c:set var="monthprovide" value="${goods.monthprovides.iterator().next()}" scope="page"/>
									<span class="price">￥<fmt:formatNumber type="number" value="${monthprovide.unitPrice } " maxFractionDigits="2"/>*${monthprovide.months }期</span>
								</c:if>
							</li>
						</c:forEach>
					</ul>
				</div>
			</div>
			<div class="page_wrap">
				<a href="#" onclick="prePage(this, ${page.currentPage-1},'${requestScope.searchOption }','${requestScope.categoryId4Search }')" class="arrow_ll"></a>
				<c:forEach begin="1" end="${requestScope.page.totalPage}" var="str" step="1">
					<c:if test="${page.currentPage == str }">
						<a href="showGoods.do?currentPage=${str }&searchOption=${requestScope.searchOption }&categoryId4Search=${requestScope.categoryId4Search}" class="on"><b>${str }</b></a>
					</c:if>
					<c:if test="${page.currentPage != str }">
						<a href="showGoods.do?currentPage=${str }&searchOption=${requestScope.searchOption }&categoryId4Search=${requestScope.categoryId4Search}">${str }</a>
					</c:if>
				</c:forEach>
				<a href="#" onclick="nextPage(this, ${page.currentPage+1}, ${page.totalPage },'${requestScope.searchOption }','${requestScope.categoryId4Search }')" class="arrow_rr"></a>
				
			</div>
		</section>
	</section>
	<footer>
		<h4>趣分期第六组工作室</h4>
		<p>&copy;copyright EarlTechnology 2015 </p>
	</footer>
	<script src="${pageContext.request.contextPath }/js/index.js"></script>
	<script src="${pageContext.request.contextPath }/js/goodslist.js"></script>
</body>
</html>