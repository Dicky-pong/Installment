<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>订单详情</title>
<link href="${pageContext.request.contextPath }/css/bootstrap.min.css" rel="stylesheet" media="screen">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/style.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/order-detail.css" />
<script src="${pageContext.request.contextPath }/js/jquery.js"></script>
<script src=".${pageContext.request.contextPath }/js/bootstrap.min.js"></script>
<script>
function jump(){
 alert("添加成功");
 window.location.href="QCGL.html";
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
  <li role="presentation" ><a href="../index.html">主页</a></li>
  <li role="presentation" ><a href="../glygl/GLYGL.html">管理员管理</a></li>
  <li role="presentation"><a href="../glygl/JSGL.html">角色管理</a></li>
  <li role="presentation"><a href="../spgl/SPGL.html">商品管理</a></li>
  <li role="presentation"><a href="../sjgl/SJFX.html">用户数据分析</a></li>
  <li role="presentation" class="active"><a href="../ddgl/DDGL.html">订单管理</a></li>
  <li role="presentation"><a href="../Login.html">退出</a></li>
</ul>   
</div>

<div id="main" class="inline_div">
<ol class="breadcrumb">
  <li><a href="../index.html">趣分期后台管理系统</a></li>
  <li><a href="DDGL.html">订单管理</a></li>
  <li class="active">订单详情</li>
</ol>
<center>
<div id="" class="registration-form">
<h3 ><b>订单详细列表</b></h3>
<form >
   <h4 class='order-bt'><b>订单信息</b></h4>
  <table class='order-table'>
    <tr>
      <td>商品编号</td>
      <td>商品名称</td>
      <td>分期详情</td>
      <td>赠送积分</td>
      <td>商品数量</td>
    </tr>
      <tr>
      <td>1232424</td>
      <td>iPhone6S</td>
      <td>¥120*40</td>
      <td>50</td>
      <td>1</td>
    </tr>
    <br />



  </table>
    <table class='order-table'>
    <tr>
      <td>订单编号</td>
      <td>支付方式</td>
      <td>配送方式</td>
      <td>下单时间</td>
    </tr>
      <tr>
      <td>10010</td>
      <td>在线支付</td>
      <td>普通快递</td>
      <td>2015-12-2</td>
    </tr>
    <br />
    


  </table>

      <table class='order-table'>
    <tr>
      <td width='205px'>备注</td>
      <td>无</td>

    </tr>
    <br />
    


  </table>
  <div class="clr"></div>

  <h4 class='order-bt'><b>收货人信息</b></h4>
     <br />
  <table class='order-table'>
    <tr>
      <td>收货人姓名</td>
      <td>地址</td>
      <td>联系方式</td>
      <td>电子邮箱</td>
    </tr>
      <tr>
      <td>陈本杰</td>
      <td>广东海洋大学</td>
      <td>13726930939</td>
      <td>695449418@qq.com</td>
    </tr>
    <br />



  </table>
    <div class="clr"></div>
    <h4 class='order-bt'><b>发票信息</b></h4>
      <div class="clr"></div>
  <table class='order-table'>
    <tr>
      <td>发票类型</td>
      <td>发票抬头</td>
      <td>发票内容</td>
    </tr>
      <tr>
      <td>普通发票</td>
      <td>个人</td>
      <td>明细</td>
    </tr>




  </table>
    <div class="clr"></div>
    <h4 class='order-bt'><b>结算信息</b></h4>
      <div class="clr"></div>
  <table class='order-table'>
    <tr>
      <td>商品金额</td>
      <td>订单总金额：120元</td>
    </tr>



  </table>

</form>

	 
</div>
</center>





</div>

</div>

<div id="yw" class="">
<center>
Copyright &copy; 2014安室工作室版权所有
</center>
</div>



</body>
</html>
