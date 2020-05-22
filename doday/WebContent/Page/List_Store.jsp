<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<!-- 스크립트 -->
	<!-- jQuery -->
	<script src="http://code.jquery.com/jquery-3.4.1.min.js"> </script>
	
	<!-- 스타일 -->
	<!-- 부트스트랩 -->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
	
	<!-- 스타일 -->
	<link href="/css/bootstrap.min.css" rel="stylesheet" type="text/css">
	<link href="/css/bootstrapCustom.css" rel="stylesheet" type="text/css">
	<link href="/css/style_listStore.css" rel="stylesheet" type="text/css">

	
	
	<title>오늘뭐해</title>
	
</head>
<body>
	<jsp:include page="../include/topBar.jsp" flush="true"/>
	<div class="container">
		<div class="blank"></div>
		<div class="row">
			<div class="col-md-6 searchValue">
				<div class="storeName_div view_div">가게이름</div>
				<div class="storeName_div view_div">테마</div>
				<div class="storeName_div view_div">지역</div>
			</div>	
		</div>
		<div class="row">
			<div class="offset-md-1 col-md-11 reviewContent_div">
				<div class="row review_div">
					<div class="img_div col-3 col-xs-3">
						<img class="reviewImg" src="../Image/reviewphoto.PNG">
					</div>
					<div class="col-8 col-md-8 card-body">
						<dl class="review_dl">
							<dt class="reviewTitle">신선한 고기 무한리필가게!</dt>
							<dd class="reviewText">무한리필로 든든하게 배를 채울 수 있는 고깃집인 신가입니다. 다른 고기 뷔페와는 다르게 두껍고 해동된 고기를 먹을 수 있어서 더욱 좋았습니다.</dd>
							<dd class="reactContent">
								<span class="heart_icon">♡</span>
								<em class="like_count">43</em>
								<img class="commentImage" src="../Image/comment.png">
								<em class="comment_count">9</em>
							</dd>
						</dl>
					</div>
				</div>
				<div class="row review_div">
					<div class="img_div col-3 col-xs-3">
						<img class="reviewImg" src="../Image/reviewphoto.PNG">
					</div>
					<div class="col-8 col-md-8 card-body">
						<dl class="review_dl">
							<dt class="reviewTitle">신선한 고기 무한리필가게2!</dt>
							<dd class="reviewText">무한리필로 든든하게 배를 채울 수 있는 고깃집인 신가입니다. 다른 고기 뷔페와는 다르게 두껍고 해동된 고기를 먹을 수 있어서 더욱 좋았습니다.</dd>
							<dd class="reactContent">
								<span class="heart_icon">♡</span>
								<em class="like_count">43</em>
								<img class="commentImage" src="../Image/comment.png">
								<em class="comment_count">9</em>
							</dd>
						</dl>
					</div>
				</div>
				<div class="row review_div">
					<div class="img_div col-3 col-xs-3">
						<img class="reviewImg" src="../Image/reviewphoto.PNG">
					</div>
					<div class="col-8 col-md-8 card-body">
						<dl class="review_dl">
							<dt class="reviewTitle">신선한 고기 무한리필가게2!</dt>
							<dd class="reviewText">무한리필로 든든하게 배를 채울 수 있는 고깃집인 신가입니다. 다른 고기 뷔페와는 다르게 두껍고 해동된 고기를 먹을 수 있어서 더욱 좋았습니다.</dd>
							<dd class="reactContent">
								<span class="heart_icon">♡</span>
								<em class="like_count">43</em>
								<img class="commentImage" src="../Image/comment.png">
								<em class="comment_count">9</em>
							</dd>
						</dl>
					</div>
				</div>
				<div class="row review_div">
					<div class="img_div col-3 col-xs-3">
						<img class="reviewImg" src="../Image/reviewphoto.PNG">
					</div>
					<div class="col-8 col-md-8 card-body">
						<dl class="review_dl">
							<dt class="reviewTitle">신선한 고기 무한리필가게2!</dt>
							<dd class="reviewText">무한리필로 든든하게 배를 채울 수 있는 고깃집인 신가입니다. 다른 고기 뷔페와는 다르게 두껍고 해동된 고기를 먹을 수 있어서 더욱 좋았습니다.</dd>
							<dd class="reactContent">
								<span class="heart_icon">♡</span>
								<em class="like_count">43</em>
								<img class="commentImage" src="../Image/comment.png">
								<em class="comment_count">9</em>
							</dd>
						</dl>
					</div>
				</div>
			</div>
		</div>
		<footer>
			<div>
				<em>1,2,3</em>
			</div>
		</footer>
	</div>
	
		
	<!-- 부트스트랩 -->
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>