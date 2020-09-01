<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<!-- 메인화면의 js -->
	<script src="/include/js/topbar.js"></script>
	<!-- topBar의 css -->
	<link rel="stylesheet" type="text/css" href="/include/css/topBar.css">
</head>
<body>
	<nav class="navbar navbar-dark bg-pink navbar-expand-sm">
		<a class="navbar-brand" href="/">오늘뭐해</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="collapsibleNavbar">
			<ul class="navbar-nav">
				<li class="nav-item">
					<a class="nav-link" href="/Page/board/List_Board.jsp">리스트</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="/Page/event/viewEventBoard.jsp">이벤트</a>
				</li>				
			</ul>
			<ul class="navbar-nav ml-auto">
				<li class="nav-item dropdown userLog">
					<a class="nav-link dropdown-toggle" id="navbargrop" data-toggle="dropdown" style="cursor:pointer">로그인</a>
				</li>
			</ul>
		</div>
	</nav>
</body>
</html>