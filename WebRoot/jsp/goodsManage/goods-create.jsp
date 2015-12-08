<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title>添加商品</title>
  <link href="${pageContext.request.contextPath }/css/bootstrap.min.css" rel="stylesheet" media="screen">
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/style.css" />
  <script src="http://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>

  <script src="${pageContext.request.contextPath }/js/bootstrap.min.js"></script>
  <script type="text/javascript">
	
  function getEById(id) {
      return document.getElementById(id);
  }

  function showimg(src) {
      var img = getEById('pic');
      img.src = src;
      img.width = 140;
      img.height = 140;
      img.style.display = 'block';
  }

  function filechange(file) {
      if (file.files && file.files[0]) {
          var reader = new FileReader();
          reader.onload = function (evt) {
              showimg(evt.target.result);
          };
          reader.readAsDataURL(file.files[0]);
      } else {
          file.select();
          var src = document.selection.createRange().text;
          showimg(src);
      }
  }

	function checkform(){
		var file=document.getElementById('file');
		if(file.value==""){
			alert("请上传图片");
			return false;
		}else if(!/\.(gif|jpg|jpeg|png|bmp|GIF|JPG|PNG|BMP)$/.test(file.value)){
				alert("类型必须是.gif,jpeg,jpg,png,bmp中的一种");
				file.value="";
				return false;
		}else{	
			return true;
		}
	}
  
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
          <a href="backIndex.do">主页</a>
        </li>
        <li role="presentation" >
          <a href="showAllAdmin.do">管理员管理</a>
        </li>
        <li role="presentation">
          <a href="showAllRole.do">角色管理</a>
        </li>
        <li role="presentation" class="active">
          <a href="showAllGoods.do">商品管理</a>
        </li>
        <li role="presentation">
          <a href="../sjgl/SJFX.html">用户数据分析</a>
        </li>
        <li role="presentation">
          <a href="Order_myBackOrder.do?status=-1">订单管理</a>
        </li>
        <li role="presentation">
          <a href="../Login.html">退出</a>
        </li>
      </ul>
    </div>

    <div id="main" class="inline_div">
      <ol class="breadcrumb">
        <li>
          <a href="backIndex.do">趣分期后台管理系统</a>
        </li>
        <li>
          <a href="showAllGoods.do">商品管理</a>
        </li>
        <li class="active">添加商品</li>
      </ol>
      <center>
        <div id="" class="registration-form">
          <h3> <b>商品信息登记表</b>
          </h3>
          <form id="message"  enctype="multipart/form-data" method="post">
            <table>
              <tr>
                <td>商品ID</td>
                <td>
                  <input type="text" name="goodsID" value='${goods.goodsID }' readonly="readonly"/>
                </td>
                <td>商品名称</td>
                <td>
                  <input id="name" type="text" name="name" value=""/>
                </td>
                <td>品牌名称</td>
                <td>
                  <input id="brand" type="text" name="brand" value=""/>
                </td>
                <td>上市时间</td>
                <td>
                  <input id="date" type="date" name="date"/>
                </td>
              </tr>

              <tr>
                <td>一级分类</td>
                <td>
                  <center>
                  	<input id="categoryList" type="hidden" value="${requestScope.categoryList }" />
                  	<select id="firstSelector" onchange="selectorChange()" style='width:177px'>
                  		<c:forEach items="${requestScope.categoryList }" var="category">
                  			<option value="${category.id }">${category.name }</option>
						</c:forEach>
					</select>
                  </center>
                </td>
                <td>二级分类</td>
                <td>
                  <center>
                    <select name="categoryId" id="secondSelector" style='width:177px'>
                      <c:forEach items="${requestScope.categoryList.get(0).getCategories() }" var="category">
                  		<option value="${category.id }">${category.name }</option>
					  </c:forEach>
                    </select>
                  </center>
                </td>
                <td>期数</td>
                <td>
                  <input type="checkbox" name="periodCheck" id="inlineCheckbox1" value="3" style='width:15px'/>
                  3
                  <input type="checkbox" name="periodCheck" id="inlineCheckbox1" value="6" style='width:15px'/>
                  6
                  <input type="checkbox" name="periodCheck" id="inlineCheckbox1" value="12" style='width:15px'/>12
                </td>
                <td>
                  <input type="checkbox" name="periodCheck" id="inlineCheckbox1" value="18" style='width:15px'/>18
                </td>
                <td>
                  <input type="checkbox" name="periodCheck" id="inlineCheckbox1" value="24" style='width:15px'/>
                  24
                  <input type="checkbox" name="periodCheck" id="inlineCheckbox1" value="36" style='width:15px'/>36
                </td>
              </tr>

              <tr class = 'style'>
                <td>类型</td>
                <td>
                  <input class="type" type="text" name="style" value=""/>
                </td>
                <td>价格</td>
                <td>
                  <input class="price" type="text" name="price" value=""/>
                </td>
                <td>数量</td>
                <td>
                  <input class="count" type="text" name="count" value=""/>
                </td>
                <td>
                  <img src="${pageContext.request.contextPath }/images/add2.png" alt="" id='add'/>
                </td>

              </tr>

              <tr>
                <td>颜色</td>
                <td colspan="6">
                  <input type="checkbox" name="colorCheck" id="inlineCheckbox1" value="黑色" style='width:15px'/>
                  黑色
                  <input type="checkbox" name="colorCheck" id="inlineCheckbox1" value="白色" style='width:15px'/>
                  白色
                  <input type="checkbox" name="colorCheck" id="inlineCheckbox1" value="银色" style='width:15px'/>
                  银色
                  <input type="checkbox" name="colorCheck" id="inlineCheckbox1" value="灰色" style='width:15px'/>
                  灰色
                  <input type="checkbox" name="colorCheck" id="inlineCheckbox1" value="红色" style='width:15px'/>
                  红色
                  <input type="checkbox" name="colorCheck" id="inlineCheckbox1" value="蓝色" style='width:15px'/>
                  蓝色
                  <input type="checkbox" name="colorCheck" id="inlineCheckbox1" value="绿色" style='width:15px'/>
                  绿色
                  <input type="checkbox" name="colorCheck" id="inlineCheckbox1" value="粉红色" style='width:15px'/>
                  粉红色
                  <input type="checkbox" name="colorCheck" id="inlineCheckbox1" value="金色" style='width:15px'/>金色</td>
              	
              </tr>
              <tr>
              	<td colspan="2"> <input id="file" type="file" name="file" onchange="filechange(this)" /></td>
              	<td>图片预览：</td>
              	<td><img src="" id="pic" style="display:none;" alt=""/></td>
              </tr>
            </table>
            商品介绍信息
            <br />
            <textarea id="descript" name="descript" cols="70" rows="5" ></textarea>
            <br />
            <button id="saveButton" type="button" class="btn btn-default">提交</button>
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