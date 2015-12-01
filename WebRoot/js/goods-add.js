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
//			if (validate(price, "请填写价格") == false) {
//				price.focus();
//				return false
//			}
			if (validate(date, "请填写上市时间") == false) {
				date.focus();
				return false
			}
			if (validate(descript, "请填写商品描述") == false) {
				descript.focus();
				return false
			} else {
				form.action = "createGoods.do";
				form.submit();
				//window.location.href = "createGoods.do";
			}
		}
	}
	var form = document.getElementById('message');
	document.getElementsByClassName('btn')[0].onclick = function() {
		validate_form(form);
	};

	var add = function() {
		document.body.onclick = function(e) {
			var e = e || event;
			var current = e.target || e.srcElement
			console.log(e);
			if (current.id == 'add') {
				var style = document.getElementsByClassName('style')[0];
				var str = document.getElementsByClassName("style")[0].outerHTML;
				var type =document.getElementsByClassName('type')[0].value;
				var price = document.getElementsByClassName('price')[0].value;
				console.log(str);
				str = str + "<tr class='style'><td>类型</td><td><input class='type' type='text' name='style'/></td><td>价格</td><td><input class='price' type='text' name='price'/></td></tr>";
				document.getElementsByClassName("style")[0].outerHTML = str;
				document.getElementsByClassName('type')[0].value = type;
				document.getElementsByClassName('price')[0].value = price;
				document.getElementsByClassName('style')[0].className='no';
				document.getElementsByClassName('type')[0].className='no';
				document.getElementsByClassName('price')[0].className='no';

				// console.log(str);
			}
		}
	}
	add();

})();