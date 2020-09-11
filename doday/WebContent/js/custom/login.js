$(document).ready(function() {
	moveRegister();
	loginBtn();
	authority()
	management()
	enterKey();
	
});

function enterKey(){
	$("#password").keyup(function(key){
		if(key.keyCode == 13){
			login();
			
		}
		
	})
}

function loginBtn(){
	$("#loginBtn").on("click",function(){
		login();
	});
}



function moveRegister(){
	$("#registerBtn").on("click",function(){
		location.href = "/doday/Page/user/Register.jsp";
		
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
				location.href = "/doday/"
			}
			
		});
			
			
		
	})

}


function login(){
	
	if($("#id").val() == sessionStorage.getItem("userId")){
		if($("#password").val() == sessionStorage.getItem("userPassword")){
			var id = sessionStorage.getItem("userId");
			var password = sessionStorage.getItem("userPassword");
			sessionStorage.setItem("id", id);
			sessionStorage.setItem("password", password);
			location.href = "/index.jsp"
		}else{
			alert("비밀번호가 일치하지 않습니다.");
		}	
	}
	else{
		alert("아이디와 비밀번호가 일치하지 않습니다.");
		
	} 
}


function authority(){
	// 0:일반 1:기업인 2:관리자
	var degree = sessionStorage.getItem("degree");
	if(degree == 0){
		$(".user").css("display","inline-block");
		$(".manager").css("display","none");
		$(".enterprise").css("display","none");
		$("#titleAuth").text("일반");
	}else if(degree == 1){
		$(".user").css("display","none");
		$(".manager").css("display","none");
		$(".enterprise").css("display","inline-block");
		$("#titleAuth").text("기업가");
		
	}else if(degree == 2){
		$(".user").css("display","none");
		$(".manager").css("display","inline-block");
		$(".enterprise").css("display","none");
		$("#titleAuth").text("관리자");
	}
	
	var name = sessionStorage.getItem("name");
	$("#userName").text(name);
}

function management(){
	$("#mamageBtn").on("click",function(){
		location.href = "/Page/User_Management.jsp"
	})
	
	
}




