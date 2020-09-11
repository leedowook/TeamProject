<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<!-- 스크립트 -->
	<!-- jQuery -->
	<!-- 스크립트 -->
	<!-- jQuery -->
	<script src="http://code.jquery.com/jquery-3.4.1.min.js"> </script>
	<script src="/doday/js/custom/register.js"></script>
	
	<!-- 부트스트랩 -->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
	
	<!-- 스타일 -->
	<link href="/doday/css/bootstrap.min.css" rel="stylesheet" type="text/css">
	<link href="/doday/css/bootstrapCustom.css" rel="stylesheet" type="text/css">
	<link href="/doday/css/user/style_login.css" rel="stylesheet" type="text/css">
	<title>오늘뭐해</title>

</head>
<body>
	<jsp:include page="/include/topBar.jsp" flush="true"/>
	<div class="container">
		<div class="blank"></div>
		<div class="row">
		<form id="registerForm" action="Register.doday" method="get">
			<div class="textArea">
				<h1 class="text-truncate title"> 회원가입 </h1>
			</div>
			<div class = "col-md-12">
				<div class="row">
					<div class="offset-md-1 col-md-4">
						<label class="Item"><input type="radio" name ="auth" class="radio" value="0">일반</label>
						<label class="Item"><input type="radio" name ="auth" class="radio" value="1">기업가</label>
					</div>
				</div>
				
				<div class="form-group row">
					<span class="offset-md-1 col-md-2 Item necessary ">아이디</span>
					<input id="infoId" name="id" class="col-md-3 form-control">
					<span class="col-md-3 constraint">(특수문자 제외, 4~10자)</span>
				</div>
			</div>
			<div class = "col-md-12">
				<div class="form-group row">
					<span class="offset-md-1 col-md-2 Item necessary">비밀번호</span>
					<input id="infoPassword"  name="password"  class="col-md-3 form-control" type="password">
					<span class="col-md-5 constraint">(영문 대소문자/숫자/특수문자 중 2가지 이상 조합, 10자~16자)</span>
				</div>
			</div>
			<div class = "col-md-12">
				<div class="form-group row">
					<span id=passwordCheckItem class="offset-md-1 col-md-3 Item necessary">비밀번호 확인</span>
					<input id="passwordCheck" class="col-md-3 form-control" type="password">
					<span class="col-md-5 constraint fail">비밀번호가 일치하지 않습니다.</span>
					<span class="col-md-5 constraint success">비밀번호가 일치합니다.</span>
				</div>
			</div>
			<div class = "col-md-12">
				<div class="form-group row">
					<span class="offset-md-1 col-md-2 Item necessary">이름</span>
					<input id="infoName" name="name"  class="col-md-3 form-control">
				</div>
			</div>
			<div class = "col-md-12">
				<div class="form-group row">
					<span class="offset-md-1 col-md-2 Item">휴대전화</span>
					<input id="infoPhoneNumber" name="phone"  class="col-md-3 form-control">
				</div>
			</div>
			<div class = "col-md-12">
				<div class="form-group row">
					<span class="offset-md-1 col-md-2 Item">나이</span>
					<input id="infoAge"  name="age" class="col-md-3 form-control">
				</div>
			</div>
			<div class="col-md-12 text-center">
				<input id="registerBtn" type="button" class="col-md-2 registerBtn btn btn-primary" value="회원가입">
			</div>
			</form>
		</div>
	</div>
	<!-- 부트스트랩 -->
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>