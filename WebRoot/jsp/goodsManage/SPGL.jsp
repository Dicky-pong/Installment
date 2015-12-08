<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>商品管理</title>
<link href="${pageContext.request.contextPath }/css/bootstrap.min.css" rel="stylesheet" media="screen">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/style.css" />
<script>
	function selectorChange(){
		var firstSelector = document.getElementById("firstSelector");
		var categoryId = firstSelector.options[firstSelector.selectedIndex].value;
		 $.ajax({
	       url: "getSecondCategory.do",
	       type: "post",
	       data:{
	       	categoryId: categoryId
	       },
	       success: function (data) {
	           if (data.code == 1) {
	           	var category = data.message;
	           	var secondSelector = $("#secondSelector");
	           	secondSelector.empty();
	               //alert("getRole successful!\n"+roles[0].name+"\n"+roles.length);
	               secondSelector.append('<option value="" >不限</option>');
	               for(var i=0; i<category.length; i++){
	               	var txt='<option value="'+category[i].id+'" >'+category[i].name+'</option>'; 
	               	secondSelector.append(txt);
	               }
	           }
	           if (data.code == 0) {
	               alert(data.message);
	           }
	       }
	   });
	}
	function searchFun(obj) {
		var goodsName = document.getElementById("goodsName").value;
		var goodsBrand = document.getElementById("goodsBrand").value;
		var secondSelector = document.getElementById("secondSelector");
		var categoryId4Search = secondSelector.options[secondSelector.selectedIndex].value;
		//alert("name: "+goodsName+" brand: "+goodsBrand+" categoryId4Search: "+categoryId4Search);
		obj.href = 'showAllGoods.do?goodsName='+goodsName+'&goodsBrand='+goodsBrand+'&categoryId4Search='+categoryId4Search;
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
				<li role="presentation"><a href="showAllRole.do">角色管理</a>
				</li>
				<li role="presentation" class="active"><a
					href="showAllGoods.do">商品管理</a>
				</li>
				<li role="presentation"><a href="../sjgl/SJFX.html">用户数据分析</a>
				</li>
				<li role="presentation"><a href="Order_myBackOrder.do?status=-1">订单管理</a>
				</li>
				<li role="presentation"><a href="#">退出</a>
				</li>
			</ul>
		</div>

		<div id="main" class="inline_div">
			<ol class="breadcrumb">
				<li><a href="backIndex.do">趣分期后台管理系统</a>
				</li>
				<li class="active">商品管理</li>
			</ol>
			一级分类<select id="firstSelector" onchange="selectorChange()" style='width:177px'>
                  		<c:forEach items="${requestScope.categoryList }" var="category">
                  			<option value="${category.id }">${category.name }</option>
						</c:forEach>
					</select>
			二级分类<select name="categoryId" id="secondSelector" style='width:177px'>
					 <option value="">不限</option>
                      <c:forEach items="${requestScope.categoryList.get(0).getCategories() }" var="category">
                  		<option value="${category.id }">${category.name }</option>
					  </c:forEach>
                    </select>
            商品名称<input id="goodsName" type="text" name="goodsName" value="${requestScope.goodsName }" />
            品牌名称<input id="goodsBrand" type="text" name="goodsBrand" value="${requestScope.goodsBrand }" />
            <a href="#" onclick="searchFun(this)"><img id='img-query'src="${pageContext.request.contextPath }/images/query.png">查询</a>
			<h3 align="center">
				<b>商品详情</b>
			</h3>
			<form action="deleteGoods.do" id="goodsForm" method="post" >
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
					<th><input type="checkbox" name="choose" value="${goods.id }"/>
					</th>
					<th>${goods.goodsID }</th>
					<th>${goods.name }</th>
					<th>${goods.brand }</th>
					<th>${goods.date.year+1900}-${goods.date.month+1}-${goods.date.date}</th>
					<th>${goods.category.category.name}>>${goods.category.name }</th>
					<th><a href="toUpdateGoods.do?goodsId=${goods.id }">
						<img width="30" height="25" src="${pageContext.request.contextPath }/images/update.png"/>
							更新</a></th>
					<!-- <th><a href="showGoods.do?goodsId=${goods.id }">详情</a> 
					</th>-->
				</tr>
				</c:forEach>
				
			</table>
			</form>
			<center>
				<nav>
				<ul class="pagination">
					<li><a href="#" onclick="prePage(this, ${page.currentPage-1},'${requestScope.goodsName }','${requestScope.goodsBrand }','${requestScope.categoryId4Search }')">&laquo;</a>
					</li>
					<c:forEach begin="1" end="${requestScope.page.totalPage}" var="str" step="1">
						<li>
						<a href="showAllGoods.do?currentPage=${str }&name=${requestScope.goodsName }&brand=${requestScope.goodsBrand }&categoryId4Search=${requestScope.categoryId4Search}">${str }</a>
						</li>
					</c:forEach>
					<li><a href="#" onclick="nextPage(this, ${page.currentPage+1}, ${page.totalPage },'${requestScope.goodsName }','${requestScope.goodsBrand }','${requestScope.categoryId4Search }')">&raquo;</a>
					</li>
				</ul>
				</nav>
			</center>
			<div id="" class="">
				<div class="operationbutton">
					<a href="toCreateGoods.do"><img src="${pageContext.request.contextPath }/images/add.png">添加</a>
				</div>
				<div class="operationbutton">
					<a href="#" onclick="if(deleteConfirm()){document.getElementById('goodsForm').submit()}"><img
						src="${pageContext.request.contextPath }/images/delect.png">删除</a>
				</div>
				
				<div class="operationbutton">
					
				</div>

			</div>

		</div>
		<div id="yw" class="">
			<center>Copyright &copy; 2014安室工作室版权所有</center>
		</div>
</body>
</html>
