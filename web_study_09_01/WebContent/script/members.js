function loginCheck() {
	if (document.frm.userid.value.length == 0) {
		alert("아이디는 필수 사항입니다.");
		document.frm.userid.focus();
		return false;
	}
	
	if (document.frm.pwd.value.length == 0) {
		alert("비밀번호는 필수 사항입니다.");
		document.frm.pw.focus();
		return false;
	}
	
	return true;
	
}

function idCheck() {
	if(document.frm.userid.value == "") {
		alert("아이디를 입력해주세요")
		return;
	}
	if (document.frm.userid.value.length < 4) {
		alert("아이디는 4자리 이상이어야 합니다.");
		document.frm.userid.focus();
		return false;
	}
	var url = "../idCheck.do?userid="+document.frm.userid.value;
   window.open(url, "_blank_1","toolbar=no, menubar=no,scrollbar=yes, resizable=no, width=450,height=200");
   
} 

function joinCheck() {
	if (document.frm.name.value.length == 0) {
		alert("이름을 입력하세요");
		document.frm.name.focus();
		return false;
	}
	
	if (document.frm.userid.value.length == 0) {
		alert("아이디를 입력하세요");
		document.frm.userid.focus();
		return false;
	}
	
	if (document.frm.userid.value.length < 4) {
		alert("아이디 4자리 이상이어야합니다.");
		document.frm.userid.focus();
		return false;
	}
	
	if (document.frm.pwd.value == "") {
		alert("비밀번호를 입력하세요");
		document.frm.pwd.focus();
		return false;
	}
	
	if (document.frm.pwd.value != document.frm.pwd_check.value) {
		alert("비밀번호를 확인해주세요");
		document.frm.pwd.focus();
		return false;
	}
	
	if (document.frm.reid.value.length == 0) {
		alert("중복체크를 하지 않았습니다.");
		document.frm.userid.focus();
		return false;
	}
	
	return true;
	
}

function idok() {
	opener.frm.userid.value = document.getElementsByName("userid")[0].value;
	opener.frm.reid.value = document.getElementsByName("userid")[0].value;
	self.close();
}