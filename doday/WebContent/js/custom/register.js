$(document).ready(function() {
	
	var passwordCheck = -1;
	var registerCheck = false;
	
	$("#passwordCheck").blur(function(){
		passwordCheck = checkPassword();
	})
	$("#infoPassword").blur(function(){
		passwordCheck = checkPassword();
	});

	$("#registerBtn").click(function(){
		registerCheck = register(passwordCheck);
		if(registerCheck){
			alert("회원가입이 완료되었습니다.")
			location.href = "/index.jsp"
		}
			
	})
	
});


function checkPassword(){
	var check = -1;
	var password = $("#infoPassword").val();
	var checkPassword = $("#passwordCheck").val();

	if(password.trim() != ""){
		if(password == checkPassword){
			check = 0;
			$(".fail").css("display","none");
			$(".success").css("display","block");
		}else if(password != checkPassword){
			check = 1;
			$(".fail").css("display","block");
			$(".success").css("display","none");
		}
	}else{
		check = 2;
		$(".fail").css("display","none");
		$(".success").css("display","none");
	}

	return check;
}

function register(passwordCheck){

	var radioVal = $("input[name=degree]:checked").val();

	var authSuccess = false;
	var idSuccess = false;
	var passwordSuccess = false;
	var nameSuccess = false;
	var allSuccess = false;

	var auth = $("input[name=degree]:checked").val()
	var id = $("#infoId").val();
	var password = $("#infoPassword").val();
	var name = $("#infoName").val();

	if(auth != null){
		authSuccess = true;
	}

	if(id.trim() != ""){
		idSuccess = true;
	}

	if(password.trim() != ""){
		passwordSuccess = true;
	}

	if(name.trim() != ""){
		nameSuccess = true;
	}

	if(passwordCheck == 1){
		alert("비밀번호가 서로 일치하지 않습니다.")
	}
	else if(passwordCheck == 2){
		alert("Fill in Password")
	}
	else if(passwordCheck == 0 || passwordCheck == -1){

		if(idSuccess != true){
			alert("아이디를 입력해주세요")
		}
		else if(nameSuccess != true){
			alert("이름을 입력해주세요")
		}
		else if(authSuccess != true){
			alert("역할을 체크해주세요");
		}
		else if(nameSuccess == true && idSuccess == true && passwordSuccess == true){
			allSuccess = true;
			sessionStorage.setItem("userId", id);
			sessionStorage.setItem("userPassword", password);
			sessionStorage.setItem("username", name);
			sessionStorage.setItem("degree", $("input[name=degree]:checked").val());
			// 0:일반 1:기업인 2:관리자
		}

	}

	return allSuccess;
}