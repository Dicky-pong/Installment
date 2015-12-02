<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title>更新商品</title>
  <link href="${pageContext.request.contextPath }/css/bootstrap.min.css" rel="stylesheet" media="screen">
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/style.css" />
  <script src="${pageContext.request.contextPath }/js/jquery.js"></script>
  <script src="${pageContext.request.contextPath }/js/bootstrap.min.js"></script>
  <script>
function jump(){
 alert("更新");
 document.getElementById("message").submit();
}
</script>
</head>
<body>

  <div id="gdou" class="inline_div" >
    <img src="${pageContext.request.contextPath }/images/qfq.png"width="300" height="80" />
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
        <li class="active">更新商品</li>
      </ol>
      <center>
        <div id="" class="registration-form">
          <h3> <b>商品信息登记表</b>
          </h3>
          <form id="message" action="updateGoods.do">
            <table>
              <tr>
                <td>商品ID</td>
                <input type="hidden" name="id" value="${requestScope.goods.id }"/>
                <td>
                  <input type="text" name="goodsID" value="${requestScope.goods.goodsID }" readonly />
                </td>
                <td>商品名称</td>
                <td>
                  <input type="text" name="name" value="${requestScope.goods.name }"  />
                </td>
                <td>品牌名称</td>
                <td>
                  <input type="text" name="brand" value="${requestScope.goods.brand }"  />
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
            <textarea name="detail" cols="70" rows="5"  >${requestScope.goods.descript }</textarea>
            <br />
            <button type="button" class="btn btn-default" onclick="jump()">更新</button>
            &nbsp&nbsp&nbsp
            <button type="reset" class="btn btn-default">重置</button>
          </form>

        </div>
      </center>

    </div>

  </div>

  <div id="yw" class="">
    <center>Copyright &copy; 2014安室工作室版权所有</center>
  </div>

</body>
  <script src="${pageContext.request.contextPath }/js/goods-add.js"></script>
</html>