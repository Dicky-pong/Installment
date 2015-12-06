<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>管理员管理</title>
<link href="${pageContext.request.contextPath }/css/bootstrap.min.css" rel="stylesheet" media="screen">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/style.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/glygl.css" />
<script>
	function searchFun(obj) {
		var roleSelector = document.getElementById("roleSelector");
		var roleId4Search = roleSelector.options[roleSelector.selectedIndex].value;
		obj.href = 'showAllAdmin.do?roleId4Search='+roleId4Search;
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
	function prePage(obj, page, roleId4Search){
		if(page == '0'){
			alert("已经是第一页了");
			return false;
		}
		obj.href = 'showAllAdmin.do?currentPage='+page+'&roleId4Search='+roleId4Search;
	}
	function nextPage(obj, page, max, roleId4Search){
		if(page > max){
			alert("已经是最后一页了");
			return false;
		}
		obj.href = 'showAllAdmin.do?currentPage='+page+'&roleId4Search='+roleId4Search;
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
				<li role="presentation"><a href="../index.html">主页</a>
				</li>
				<li role="presentation" class="active"><a
					href="../glygl/GLYGL.html">管理员管理</a>
				</li>
				<li role="presentation"><a href="../glygl/JSGL.html">角色管理</a>
				</li>
				<li role="presentation"><a href="../spgl/SPGL.html">商品管理</a>
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
				<li><a href="../index.html">趣分期后台管理</a>
				</li>
				<li class="active">管理员管理</li>
			</ol>

			<h3 align="center">
				<b>管理员用户表</b>
			</h3>
			<select name="roleId4Search" id="roleSelector" style='width:177px'>
				<option value="">不限</option>
                <c:forEach items="${requestScope.roleList }" var="role">
                  	<option value="${role.id }">${role.name }</option>
				</c:forEach>
            </select>
				<a class='query-picture' href="#" onclick="searchFun(this)"> 
				<img src="${pageContext.request.contextPath }/images/query.png">查询</a>
			<form action="deleteAdmin.do" id="adminForm" method="post" >
			<table class="table table-hover">
				<tr>
					<th>&nbsp</th>
					<th>管理员ID</th>
					<th>密码</th>
					<th>角色</th>
					<th></th>
				</tr>
				<c:forEach var="admin" items="${requestScope.adminList }" >
				<tr>
					<th><input type="checkbox" name="choose" value="${admin.id }">
					</th>
					<th>${admin.name }</th>
					<th>${admin.password }</th>
					<th>${admin.roleinfo.name }</th>
					<th><a href="toUpdateAdmin.do?adminId=${admin.id }">更新</a></th>
				</tr>
				</c:forEach>
			</table>
			</form>
			<center>
				<div id="" class="">
					<div class="operationbutton">
						<a href="toCreateAdmin.do"> <img
							src="${pageContext.request.contextPath }/images/add.png">添加</a>
					</div>
					<div class="operationbutton">
						<a href="#" onclick="if(deleteConfirm()){document.getElementById('adminForm').submit()}""> 
						<img src="${pageContext.request.contextPath }/images/delect.png">删除</a>
					</div>


				</div>
				<nav>
				<ul class="pagination">
					<li><a href="#" onclick="prePage(this, ${page.currentPage-1},'${requestScope.roleId4Search }')">&laquo;</a>
					</li>
					<c:forEach begin="1" end="${requestScope.page.totalPage}" var="str" step="1">
						<li>
						<a href="showAllAdmin.do?currentPage=${str }&roleId4Search=${requestScope.roleId4Search}">${str }</a>
						</li>
					</c:forEach>
					<li><a href="#" onclick="nextPage(this, ${page.currentPage+1}, ${page.totalPage },'${requestScope.roleId4Search }')">&raquo;</a>
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