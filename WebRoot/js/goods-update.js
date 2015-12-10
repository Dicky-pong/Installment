(function() {
	function validate(field, alerttxt) {
		with(field) {
			if (value == null || value == "") {
				alert(alerttxt);
				return false
			} else {
				return true
			}
		}
	}

	function validate_form(form) {
		with(form) {
			if (validate(name, "请填写商品名") == false) {
				name.focus();
				return false
			}
			if (validate(brand, "请填写品牌名") == false) {
				brand.focus();
				return false
			}
			if (validate(price, "请填写价格") == false) {
				price.focus();
				return false
			}
			if (validate(date, "请填写上市时间") == false) {
				date.focus();
				return false
			}
			if (validate(descript, "请填写商品描述") == false) {
				descript.focus();
				return false
			} else {
				console.log('sdsd');
				form.submit();
//				
//				window.location.href = "";
			}
		}
	}
	var form = document.getElementById('message');
	document.getElementsByClassName('btn')[0].onclick = function() {
		validate_form(form);
	};



	var add =function(){
		document.getElementById('add').onclick=function(){
			var style =document.getElementById('style');
			var str=document.getElementById('style').innerHTML;
			document.getElementById('add').id='no-add';
			str =str+"</tr><tr><td>类型</td><td><input type='text' name='style'/></td><td>价格</td><td><input type='text' name='price'/></td><td><img src='../../image/add2.png' id='add'/></td>";
			document.getElementById('style').outerHTML=str;
			alert('message');
			console.log(str);
		}
	}

	add();

})();