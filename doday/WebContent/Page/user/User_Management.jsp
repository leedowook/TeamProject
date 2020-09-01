<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<!-- 스크립트 -->
	<!-- jQuery -->
	<script src="http://code.jquery.com/jquery-3.4.1.min.js"> </script>
	<script src=/js/user/management.js>
	</script>
	
	<!-- 스타일 -->
	<!-- 부트스트랩 -->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
	<link rel="stylesheet" href="/css/bootstrap.min.css">
	<link rel="stylesheet" href="/css/bootstrapCustom.css">
	<link rel="stylesheet" href="/css/main.css">
	<link rel="stylesheet" href="/css/custom/home.css">
	<link href="/css/user/style_managerList.css?after" rel="stylesheet" type="text/css">
	<title>오늘뭐해</title>
	
</head>
<body>
	<jsp:include page="/include/topBar.jsp" flush="true"/>
	<div class="mainBody">
		<div class="container">
			<div class="row">
				<div class="blank"></div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<table class="table table-hover table-sm">
						<thead class="thead">
							<tr>
								<th class="headth w-5"><input type="checkbox" id="chk_all"></th>
								<th class="headth w-20">아이디</th>
								<th class="headth w-10">등급</th>
								<th class="headth w-15">가입일</th>
								<th class="headth w-15">최종방문일</th>
								<th class="headth w-10">방문횟수</th>
								<th class="headth w-10">게시글수</th>
								<th class="headth w-10">댓글수</th>
							<tr>
						</thead>
						<tbody class="tbody">
							<tr class="tr">
								<th><input type="checkbox" class="chk"></th>
								<th>아이디</th>
								<th>등급</th>
								<th>가입일</th>
								<th>최종방문일</th>
								<th>방문횟수</th>
								<th>게시글수</th>
								<th>댓글수</th>
							</tr>
							<tr class="tr">
								<th><input type="checkbox" class="chk"></th>
								<th>아이디</th>
								<th>등급</th>
								<th>가입일</th>
								<th>최종방문일</th>
								<th>방문횟수</th>
								<th>게시글수</th>
								<th>댓글수</th>
							</tr>
							<tr class="tr">
								<th><input type="checkbox" class="chk"></th>
								<th>아이디</th>
								<th>등급</th>
								<th>가입일</th>
								<th>최종방문일</th>
								<th>방문횟수</th>
								<th>게시글수</th>
								<th>댓글수</th>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
	<!-- 부트스트랩 -->
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>