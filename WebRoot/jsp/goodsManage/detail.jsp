<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title>商品详情</title>
  <link href="${pageContext.request.contextPath }/css/bootstrap.min.css" rel="stylesheet" media="screen"/>
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/style.css" />
  <script src="${pageContext.request.contextPath }/js/jquery.js"></script>
  <script src="${pageContext.request.contextPath }/js/bootstrap.min.js"></script>
  <script>
function jump(){
 alert("添加成功");
 window.location.href="SPGL.html";
}
</script>
</head>
<body>

  <div id="gdou" class="inline_div" >
    <img src="${pageContext.request.contextPath }/image/qfq.png"width="300" height="80" />
  </div>

  <div id="" class="">

    <div id="navigation" class="inline_div">
      <ul class="nav nav-pills nav-stacked" role="tablist">
        <li role="presentation" >
          <a href="../index.html">主页</a>
        </li>
        <li role="presentation" >
          <a href="../glygl/GLYGL.html">管理员管理</a>
        </li>
        <li role="presentation">
          <a href="../glygl/JSGL.html">角色管理</a>
        </li>
        <li role="presentation" class="active">
          <a href="showAllGoods.do">商品管理</a>
        </li>
        <li role="presentation">
          <a href="../sjgl/SJFX.html">用户数据分析</a>
        </li>
        <li role="presentation">
          <a href="../ddgl/DDGL.html">订单管理</a>
        </li>
        <li role="presentation">
          <a href="../Login.html">退出</a>
        </li>
      </ul>
    </div>

    <div id="main" class="inline_div">
      <ol class="breadcrumb">
        <li>
          <a href="../index.html">趣分期后台管理系统</a>
        </li>
        <li>
          <a href="showAllGoods.do">商品管理</a>
        </li>
        <li class="active">商品详情</li>
      </ol>
      <center>
        <div id="" class="registration-form">
          <h3> <b>商品详细信息</b>
          </h3>
            <form id="message">
            <table>
              <tr>
                <td>商品ID</td>
                <td>
                  <input type="text" name="id" value="${requestScope.goods.goodsID }" readonly />
                </td>
                <td>商品名称</td>
                <td>
                  <input type="text" name="goodsName" value="${requestScope.goods.name }" readonly />
                </td>
                <td>品牌名称</td>
                <td>
                  <input type="text" name="brand" value="${requestScope.goods.brand }" readonly />
                </td>
                <td>上市时间</td>
                <td>
                  <input type="text" value="${requestScope.goods.date.year+1900}-${requestScope.goods.date.month+1}-${requestScope.goods.date.date}" readonly />
                </td>
              </tr>

              <tr>
                <td>一级分类</td>
                <td>
                  <center>
                  	<input type="text" value="${requestScope.goods.category.category.name}" readonly />
                  </center>
                </td>
                <td>二级分类</td>
                <td>
                  <center>
                    <input type="text" value="${requestScope.goods.category.name }" readonly />
                  </center>
                </td>
                <td>期数:</td>
                <td>
                  <c:forEach items="${requestScope.goods.monthprovides }" var="monthprovide" varStatus="status">
                    ${monthprovide.months }
                  	<c:if test="${requestScope.goods.monthprovides.size() != status.count}">
                  		/
                  	</c:if>
                  </c:forEach>
                 </td>  
              </tr>

              <tr class = 'style'>
              	<c:forEach items="${requestScope.goods.goodstypes }" var="goodstype">
              		<td>类型</td>
                	<td>
                  		<input type="text" name="style" value="${goodstype.typename }" readonly="readonly"/>
                	</td>
                	<td>价格</td>
                	<td>
                  		<input type="text" name="price" value="${goodstype.price }" readonly="readonly"/>
                	</td>
              	</c:forEach>
                
              </tr>

              <tr>
                <td>颜色</td>
                <td colspan="5">
                	<c:forEach items="${requestScope.goods.colors }" var="color" varStatus="status">
                    	${color.colorname }
                  		<c:if test="${requestScope.goods.colors.size() != status.count}">
                  			/
                  		</c:if>
                  	</c:forEach>
                </td>
              </tr>

            </table>
            商品介绍信息
            <br />
            <textarea name="detail" cols="70" rows="5" readonly="readonly" >${requestScope.goods.descript }</textarea>
            <br />
          </form>

        </div>
      </center>

    </div>

  </div>

  <div id="yw" class="">
    <center>Copyright &copy; 2014安室工作室版权所有</center>
  </div>

</body>
  <script src="${pageContext.request.contextPath }/js/detail.js"></script>
</html>