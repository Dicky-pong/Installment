<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>角色管理</title>
<link href="${pageContext.request.contextPath }/css/bootstrap.min.css" rel="stylesheet" media="screen">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/style.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/jsgl.css" />
<script>
function prePage(obj, page){
	if(page == '0'){
		alert("已经是第一页了");
		return false;
	}
	obj.href = 'showAllRole.do?currentPage='+page;
}
function nextPage(obj, page, max){
	if(page > max){
		alert("已经是最后一页了");
		return false;
	}
	obj.href = 'showAllRole.do?currentPage='+page;
}
function deleteConfirm() {
	var options = document.getElementsByName("choose");
	for(i = 0; i < options.length; i++){
		if(options[i].checked == true){
			return confirm("确定删除？");
		}
	}
	alert("未曾发现您的蹄印！");
	return false;
}
</script>

</head>
<body>
	<script src="${pageContext.request.contextPath }/js/jquery.js"></script>
	<script src="${pageContext.request.contextPath }/js/bootstrap.min.js"></script>

	<div id="gdou" class="inline_div">
		<img src="${pageContext.request.contextPath }/images/qfq.png" width="300" height="80" />
	</div>

	<div id="" class="">

		<div id="navigation" class="inline_div">
			<ul class="nav nav-pills nav-stacked" role="tablist">
				<li role="presentation"><a href="backIndex.do">主页</a>
				</li>
				<li role="presentation"><a href="showAllAdmin.do">管理员管理</a>
				</li>
				<li role="presentation" class="active"><a
					href="showAllRole.do">角色管理</a>
				</li>
				<li role="presentation"><a href="showAllGoods.do">商品管理</a>
				</li>
				<li role="presentation"><a href="../sjgl/SJFX.html">用户数据分析</a>
				</li>
				<li role="presentation"><a href="Order_myBackOrder.do?status=-1">订单管理</a>
				</li>
				<li role="presentation"><a href="../Login.html">退出</a>
				</li>
			</ul>
		</div>

		<div id="main" class="inline_div">
			<ol class="breadcrumb">
				<li><a href="backIndex.do">趣分期后台管理</a>
				</li>
				<li class="active">角色管理</li>
			</ol>
			<h3 align="center">
				<b>角色表</b>
			</h3>
			<form method="post" id="roleForm" action="deleteRole.do">
			<table class="table table-hover">
				<tr>
					<th>&nbsp</th>
					<th>角色ID</th>
					<th>角色名</th>
					<th></th>
				</tr>
				<c:forEach var="role" items="${requestScope.roleList }" >
				<tr>
					<th><input type="checkbox" name="choose"  value="${role.id }">
					</th>
					<th>${role.id }</th>
					<th>${role.name }</th>
					<th><a href="toUpdate.do">更新</a></th>

				</tr>
				</c:forEach>
			</table>
			</form>
			<center>
				<div id="" class="">
					<div class="operationbutton">
						<a href="toCreateRole.do"><img src="${pageContext.request.contextPath }/images/add.png">添加</a>
					</div>
					<div class="operationbutton">
						<a href="#" onclick="if(deleteConfirm()){document.getElementById('roleForm').submit()}"><img
							src="${pageContext.request.contextPath }/images/delect.png">删除</a>
					</div>

				</div>
				<nav>
				<ul class="pagination">
					<li><a href="#" onclick="prePage(this, ${page.currentPage-1})">&laquo;</a>
					</li>
					<c:forEach begin="1" end="${requestScope.page.totalPage}" var="str" step="1">
						<li>
						<a href="showAllAdmin.do?currentPage=${str }">${str }</a>
						</li>
					</c:forEach>
					<li><a href="#" onclick="nextPage(this, ${page.currentPage+1}, ${page.totalPage })">&raquo;</a>
					</li>
				</ul>
				</nav>
			</center>

		</div>
		<div id="yw" class="">
			<center>Copyright &copy; 2014安室工作室版权所有</center>
		</div>
</body>
</html>
