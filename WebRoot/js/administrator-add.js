(function() {
	function validate(field, alerttxt) {
		with(field) {
			if (field == null || field == "") {
				alert(alerttxt);
				return false
			} else {
				return true
			}
		}
	}

	function validate_form(form) {
		with(form) {
			if (validate(name, "请填写姓名") == false) {
				name.focus();
				return false
			}
			if (validate(password, "请填写密码") == false) {
				password.focus();
				return false
			} else {
				form.action = "createAdmin.do";
				form.submit();
				//window.location.href = "GLYGL.html";
			}
		}
	}
	var form = document.getElementById('message');
	document.getElementsByClassName('btn')[0].onclick = function() {
		validate_form(form);
	};
})();