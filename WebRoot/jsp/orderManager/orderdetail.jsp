<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>订单详情</title>
<link href="${pageContext.request.contextPath }/css/bootstrap.min.css" rel="stylesheet" media="screen">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/style.css" >
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/order-detail.css" >
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
  <li role="presentation" class="active"><a href="<c:url value='Order_myBackOrder.do?status=-1'/>">订单管理</a></li>
  <li role="presentation"><a href="../Login.html">退出</a></li>
</ul>   
</div>

<div id="main" class="inline_div">
<ol class="breadcrumb">
  <li><a href="../index.html">趣分期后台管理系统</a></li>
  <li><a href="DDGL.html">订单管理</a></li>
  <li class="active">订单详情</li>
</ol>
<div align="center" class="registration-form">
<div class="mod-main mod-comm">
                <div class="mt">
                    <h3>订单信息</h3>
                </div>
                <div class="mc">
                    <table class="tb-void tb-left">
                        <colgroup>
                            <col width="110px">
                            <col>
                        </colgroup>
                        <tbody>
                        <tr>
                            <td>订单编号</td>
                            <td>${order.orderID }</td>
                        </tr>
                        <tr>
                            <td>支付方式</td>
                            <td>在线支付</td>
                        </tr>
                        <tr>
                            <td>配送方式</td>
                            <td>普通快递</td>
                        </tr>
                        <tr>
                            <td>下单时间</td>
                            <td>${order.date }
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>

            <div class="mod-main mod-comm">
                <div class="mt">
                    <h3>收货人信息</h3>
                </div>
                <div class="mc">
                    <table class="tb-void tb-left">
                        <colgroup>
                            <col width="110px">
                            <col>
                        </colgroup>
                        <tbody align="center">
                        <tr>
                            <td>收货人姓名</td>
                            <td>${order.receiver }</td>
                        </tr>
                        <tr>
                            <td>地址</td>
                            <td>${order.address }</td>
                        </tr>
                        <tr>
                            <td>联系方式</td>
                            <td> 手机号码：${order.tel }</td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>

            <div class="mod-main mod-comm">
                <div class="mt">
                    <h3>发票信息</h3>
                </div>
                <div class="mc">
                    <table class="tb-void tb-left">
                        <colgroup>
                            <col width="110px">
                            <col>
                        </colgroup>
                        <tbody>
                        <tr>
                            <td>发票类型</td>
                            <td>普通发票</td>
                        </tr>
                        <tr>
                            <td>发票抬头</td>
                            <td>个人</td>
                        </tr>
                        <tr>
                            <td>发票内容</td>
                            <td>明细</td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>

            <div class="mod-main mod-comm">
                <div class="mt">
                    <h3>订单备注</h3>
                </div>
                <div class="mc">
                    	无
                </div>
            </div>

            <div class="mod-main mod-comm">
                <div class="mt">
                    <h3>结算信息</h3>
                </div>
                <div class="mc">
                    <table class="tb-void tb-left">
                        <colgroup>
                            <col width="110px">
                            <col>
                        </colgroup>
                        <tbody>
                        <tr>
                            <td>商品金额</td>
                            <td>订单总金额：<strong class="ftx-01">${order.payPrice }</strong>元</td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            </div>


</div>

</div>

<div id="yw" class="">
<center>
Copyright &copy; 2014安室工作室版权所有
</center>
</div>



</body>
</html>
