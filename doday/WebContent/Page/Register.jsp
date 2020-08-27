<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<!-- 스크립트 -->
	<!-- jQuery -->
	<script src="http://code.jquery.com/jquery-3.4.1.min.js"> </script>
	
	
	<!-- 부트스트랩 -->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
	
	<!-- 스타일 -->
	<link href="/css/bootstrap.min.css" rel="stylesheet" type="text/css">
	<link href="/css/bootstrapCustom.css" rel="stylesheet" type="text/css">
	<link href="/css/style_login.css" rel="stylesheet" type="text/css">
	
	<script>
		$(document).ready(function(){
			var idSuccess = false;
			var passwordSuccess = false;
			var nameSuccess = false;
			var check= null;

			$("#passwordCheck").blur(function(){
				check = checkPassword();
			})
			$("#infoPassword").blur(function(){
				check = checkPassword();
			});

			$("#registerBtn").click(function(){
				register(check);

			});
		})
		
		function checkPassword(){
			var check = false;
			var password = $("#infoPassword").val();
			var checkPassword = $("#passwordCheck").val();

			if(password.trim() != ""){
				if(password == checkPassword){
					check = true;
					$(".fail").css("display","none");
					$(".success").css("display","block");
				}else if(password != checkPassword){
					check = false;
					$(".fail").css("display","block");
					$(".success").css("display","none");
				}
			}else{
				check = false;
				$(".fail").css("display","none");
				$(".success").css("display","none");
			}

			return check;
		}

		function register(check){

			var idSuccess = false;
			var passwordSuccess = false;
			var nameSuccess = false;


			var id = $("#infoId").val();
			var password = $("#infoPassword").val();
			var name = $("#infoName").val();

			if(id.trim() != ""){
				idSuccess = true;
			}

			if(password.trim() != ""){
				passwordSuccess = true;
			}

			if(name.trim() != ""){
				nameSuccess = true;
			}

			if(check != true){
				alert("비밀번호가 서로 일치하지 않습니다.")
			}
			else if(idSuccess != true){
				alert("아이디를 입력해주세요")
			}
			else if(passwordSuccess != true){
				alert("비밀번호를 입력해주세요")
			}
			else if(nameSuccess != true){
				alert("이름을 입력해주세요")
			}
			else if(nameSuccess == true && idSuccess == true && passwordSuccess == true){
				sessionStorage.setItem("id", id);
				sessionStorage.setItem("password", password);
				sessionStorage.setItem("name", name);
			}

		

		}
		
	
	</script>
	
	
	<title>오늘뭐해</title>

</head>
<body>
	<jsp:include page="/include/topBar.jsp" flush="true"/>
	<div class="container">
		<div class="blank"></div>
		<div class="row">
			<div class="textArea">
				<h1 class="text-truncate title"> 회원가입 </h1>
			</div>
			<div class = "col-md-12">
				<div class="form-group row">
					<span class="offset-md-1 col-md-2 Item necessary ">아이디</span>
					<input id="infoId" class="col-md-3 form-control">
					<span class="col-md-3 constraint">(특수문자 제외, 4~10자)</span>
				</div>
			</div>
			<div class = "col-md-12">
				<div class="form-group row">
					<span class="offset-md-1 col-md-2 Item necessary">비밀번호</span>
					<input id="infoPassword" class="col-md-3 form-control" type="password">
					<span class="col-md-5 constraint">(영문 대소문자/숫자/특수문자 중 2가지 이상 조합, 10자~16자)</span>
				</div>
			</div>
			<div class = "col-md-12">
				<div class="form-group row">
					<span class="offset-md-1 col-md-2 Item necessary">비밀번호 확인</span>
					<input id="passwordCheck" class="col-md-3 form-control" type="password">
					<span class="col-md-5 constraint fail">비밀번호가 일치하지 않습니다.</span>
					<span class="col-md-5 constraint success">비밀번호가 일치합니다.</span>
				</div>
			</div>
			<div class = "col-md-12">
				<div class="form-group row">
					<span class="offset-md-1 col-md-2 Item necessary">이름</span>
					<input id="infoName" class="col-md-3 form-control">
				</div>
			</div>
			<div class = "col-md-12">
				<div class="form-group row">
					<span class="offset-md-1 col-md-2 Item">휴대전화</span>
					<input id="infoPhoneNumber" class="col-md-3 form-control">
				</div>
			</div>
			<div class = "col-md-12">
				<div class="form-group row">
					<span class="offset-md-1 col-md-2 Item">이메일</span>
					<input id="infoEmail" class="col-md-3 form-control">
				</div>
			</div>
			<div class="col-md-12 text-center">
				<input id="registerBtn" type="button" class="col-md-2 registerBtn btn btn-primary" value="회원가입">
			</div>
			
		</div>
			
	</div>
	
		
	<!-- 부트스트랩 -->
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>