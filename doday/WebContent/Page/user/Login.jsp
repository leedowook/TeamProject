<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<!-- 스크립트 -->
	<!-- jQuery -->
	<script src="http://code.jquery.com/jquery-3.4.1.min.js"> </script>
	<script src="/doday/js/custom/login.js"></script>
	
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
			<div class="textArea">
				<h1 class="text-truncate title">Login </h1>
			</div>	
		</div>
		<div class="row">
			<form class="col-md-12">
				<input id="id" class="offset-md-4 col-md-4 form-control loginInfo" placeholder="ID">
				<input id="password" class="offset-md-4 col-md-4 form-control loginInfo" placeholder="PASSWORD" type="password">
			</form>
			<div class="offset-md-5 col-md-4">
				<ul class="findInfo">
					<li><a href="#">아이디 찾기</a></li>
					<li><a href="#">비밀번호 찾기</a></li>
				</ul>
			</div>
			<div class="col-md-12">
				<input type="button" id="loginBtn" class="offset-md-4 col-md-4 btn btn-primary" value="로그인">
				<input type="button" id="registerBtn" class="offset-md-4 col-md-4 btn btn-primary" value="회원가입">
			</div>
			
			
			
		</div>
	</div>
	
		
	<!-- 부트스트랩 -->
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>