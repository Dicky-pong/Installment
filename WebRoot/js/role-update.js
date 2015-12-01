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
			if (validate(name, "请填写角色名") == false) {
				name.focus();
				return false
			}else {
				window.location.href = "JSGL.html";
			}
		}
	}
	var form = document.getElementById('message');
	document.getElementsByClassName('btn')[0].onclick = function() {
		validate_form(form);
	};
})();