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
			if (validate(name, "请填写角色名") == false) {
				name.focus();
				return false
			}else {
				form.action = "createRole.do";
				form.submit();
			}
		}
	}
	var form = document.getElementById('message');
	document.getElementsByClassName('btn')[0].onclick = function() {
		validate_form(form);
	};
})();