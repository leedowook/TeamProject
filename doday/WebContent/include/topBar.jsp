<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<!-- topBar의 css -->
	<link rel="stylesheet" type="text/css" href="/include/css/topBar.css">
</head>
<body>
	<nav class="navbar navbar-dark bg-pink navbar-expand-sm">
		<a class="navbar-brand" href="#">오늘뭐해</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="collapsibleNavbar">
			<ul class="navbar-nav">
				<li class="nav-item">
					<a class="nav-link" href="list">검색</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="list">이벤트</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="list">글쓰기</a>
				</li>
				
			</ul>
			<ul class="navbar-nav ml-auto">
				<li class="nav-item dropdown">
					<a class="nav-link dropdown-toggle" href="#" id="navbargrop" data-toggle="dropdown">접속</a>
					<div class="dropdown-menu">
						<a class="dropdown-item" href="#">로그인</a>
						<a class="dropdown-item" href="#">회원가입</a>
					</div>
				</li>
			</ul>
		</div>
	</nav>
</body>
</html>