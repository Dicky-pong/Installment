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
			if (validate(goodsName, "请填写商品名") == false) {
				goodsName.focus();
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
			if (validate(time, "请填写上市时间") == false) {
				time.focus();
				return false
			}
			if (validate(detail, "请填写商品描述") == false) {
				detail.focus();
				return false
			} else {
				window.location.href = "SPGL.html";
			}
		}
	}
	var form = document.getElementById('message');
	document.getElementsByClassName('btn')[0].onclick = function() {
		validate_form(form);
	};
})();