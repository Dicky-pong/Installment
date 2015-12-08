<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<html lang="en">
<head>
<meta charset="UTF-8">
<title>趣分期</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/index.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/reset.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/personCenter.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/input.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/selectCity.css">
<script src="http://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
<script>
	(function() {
		if (typeof jQuery == 'undefined') {
			document
					.write(unescape("%3Cscript src='js/jquery-2.1.4.min.js' type='text/javascript'%3E%3C/script%3E"));
		}
	})()
</script>
<style>
.main {
	background: #f2f2f2;
}

.container {
	width: 960px;
	margin: 0 auto;
}

.personinfotable {
	margin-left: 200px;
}

.personinfotable tr td {
	padding-left: 20px;
	height: 30px;
}

.container {
	padding-top: 50px;
}

.infoshow {
	background: #FFF;
	padding: 20px;
	border-radius: 5px;
}

.infoshow h1 {
	font-size: 20px;
	font-weight: 200;
	border-bottom: 1px solid #CACACA;
	padding-bottom: 10px;
}

.infoshow table {
	margin-top: 20px;
	width: 100%;
}

.infoshow table tr.bg {
	background: #F9F9F9;
	border: 1px solid #E2E2E2;
}

.infoshow table tr.bg td {
	height: 30px;
}

.infoshow table tr td {
	height: 10px;
}

.infoshow table tr td a {
	float: right;
	margin-right: 30px;
}

.infoshow form {
	width: 700px;
	margin: 0 auto;
	margin-top: 100px;
}
</style>
</head>
<body>
	<header>
		<nav class="top_nav">
			<ul class="tn_left">
				<li>快捷导航1</li>
				<!--
             -->
				<li>快捷导航2</li>
				<!--
             -->
				<li>快捷导航3</li>
			</ul>
		</nav>
		<div class="logo">
			<h4>地球表面最好的分期商城</h4>
			<h1>
				趣分期 <span>网上商城</span>
			</h1>
		</div>
	</header>
	<section class="main">

		<section class="container">
			<div class="infoshow">
				<h1>确认订单</h1>
				<form action="makeOrder.do" method="post" id="saveOrderForm">
					<table>
							<tr>
								<th><label for="username">选择到货城市</label></th>
								<td><input type="text" class="cityinput" id="citySelect"
									value="城市名" name="cityAddress"></td>
							</tr>
							<tr>
								<th><label for="username">请输入详细收货地址：</label></th>
								<td><input type="text" class="detil" name="detailAddress"
									id="siteDetil" placeholder="精确到街道"></td>
							</tr>
							<tr>
								<th><label for="username">请输入联系人姓名：</label></th>
								<td><input type="text" class="username" id="username"
									name="receiver" placeholder="收件人姓名"></td>
							</tr>
							<tr>
								<th><label for="username">请输入联系方式：</label></th>
								<td><input type="text" class="phone" id="phone"
									name="tel" placeholder="电话号码,非常重要！"></td>
							</tr>
							<div class="buttonGroup">
								<input type="submit" value="提交">
							</div>
					</table>
					<input type="hidden" name="goodstypeId" value="<%= request.getParameter("goodstypeId")%>">
					<input type="hidden" name="colorId" value="<%= request.getParameter("colorId")%>">
					<input type="hidden" name="monthId" value="<%= request.getParameter("monthId")%>">
					<input type="hidden" name="goodsId" value="<%= request.getParameter("goodsId")%>">
				</form>
			</div>
		</section>
	</section>
	<footer>
		<h4>趣分期系统</h4>
		<p>&copy;copyright EarlTechnology 2015</p>
	</footer>
	<script src="${pageContext.request.contextPath }/js/index.js"></script>
	<script src="${pageContext.request.contextPath }/js/goodslist.js"></script>
	<script src="${pageContext.request.contextPath }/js/selectCity.js"></script>
</body>
</html>