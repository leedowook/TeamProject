<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<!-- 스크립트 -->
	<!-- jQuery -->
	<script src="http://code.jquery.com/jquery-3.4.1.min.js"> </script>
	<script src="/js/custom/login.js"></script>
	
	<!-- smartEdit -->
	<script type="text/javascript" src="../se2/js/HuskyEZCreator.js" charset="utf-8"></script>
	
	<!-- 부트스트랩 -->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
	
	<!-- 스타일 -->
		<link href="/css/bootstrap.min.css" rel="stylesheet" type="text/css">
		<link href="/css/bootstrapCustom.css" rel="stylesheet" type="text/css">
		<link href="/css/user/style_profile.css?after" rel="stylesheet" type="text/css">
		
	<title>오늘뭐해</title>
</head>
<body>
	<jsp:include page="/include/topBar.jsp" flush="true"/>
	<div class="container">
		<div class="row">
			<div class="blank"></div>
		</div>
		<div class="row">
			<div class="col-12 col-md-12 menu_line">
				<div class="offset-1 col-5 mr-2 menu_div profile">
					<div class="col-md-12 menuTitle">Profile</div>
					<div class="info profileInfo">
						<div class="col-5 col-md-5 infoKey">
							<i class="fa fa-user"></i>
						</div>
						<div class="offset-1 col-6 col-md-6 nickName">
							<div class="infoKey title_div mr-2">이름</div>
							<div id="userName" class="content_div profile_div infoKey"></div>
						</div>
						<div class="offset-1 col-6 col-md-6 nickName">
							<div class="infoKey title_div  mr-2">등급</div>
							<div id="userAuth" class="content_div infoKey">일반</div>
						</div>
					</div>
					<div class="btn_div">
						<input class="btn btn-primary" type="button" value="수정">
					</div>
				</div>
				<div class="offset-1 col-5 menu_div user">
					<div class="col-md-12 col-12 menuTitle BucketListTitle">BucketList</div>
					<div class="info KeepListInfo">
						<div class="col-12 col-md-12 title_div">신선한 고기 무한리필가게!</div>
						<div class="col-12 col-md-12 content_div">무한리필로 든든하게 배를 채울 수 있는 고깃집인 신가입니다. 다른 고기 뷔페와는 다르게 두껍고 해동된 고기를 먹을 수 있어서 더욱 좋았습니다.</div>
					</div>
					<div class="btn_div">
						<input class="btn btn-primary" type="button" value="더보기">
					</div>
				</div>
				
				<div class="offset-1 col-5 menu_div enterprise">
					<div class="col-md-12 col-12 menuTitle bucketListTitle">Request</div>
					<div class="info requestInfo">
						<div class="col-12 col-md-12 title_div">이벤트신청합니다.</div>
						<div class="col-12 col-md-12 content_div">무한리필로 든든하게 배를 채울 수 있는 고깃집인 신가입니다. 다른 고기 뷔페와는 다르게 두껍고 해동된 고기를 먹을 수 있어서 더욱 좋았습니다.</div>
					</div>
					<div class="btn_div">
						<input class="btn btn-primary" type="button" value="더보기">
					</div>
				</div>
				<div class="offset-1 col-5 menu_div manager">
					<div class="col-md-12 col-12 menuTitle bucketListTitle">Manage Posts</div>
					
					<div class="btn_div">
						<input class="btn btn-primary" type="button" value="더보기">
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-12 col-md-12 menu_line">
				<div class="offset-1 col-5 mr-2 menu_div user">
					<div class="col-md-12 col-12 menuTitle BucketListTitle">RecordList</div>
					<div class="info KeepListInfo">
						<div class="col-12 col-md-12 title_div">신선한 고기 무한리필가게!</div>
						<div class="col-12 col-md-12 content_div">지금까지 이런 외국산은 없었다. 이것은 국산인가 외국산인가. 국산같은 무한리필 신가에 대해서 파헤쳐 보았다.</div>
					</div>
					<div class="btn_div">
						<input class="btn btn-primary" type="button" value="더보기">
					</div>
				</div>
				<div class="offset-1 col-5 menu_div manager">
					<div class="col-md-12 col-12 menuTitle managerTitle">member management</div>
					
					<div class="btn_div">
						<input id="mamageBtn" class="btn btn-primary" type="button" value="더보기">
					</div>
				</div>
				
				<div class="offset-1 col-5 menu_div manager">
					<div class="col-md-12 col-12 menuTitle managerTitle">Event RequestList</div>
					
					<div class="btn_div">
						<input class="btn btn-primary" type="button" value="더보기">
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-12 col-md-12 menu_line">
				<div class="offset-1 col-5 menu_div manager">
					<div class="col-md-12 col-12 menuTitle managerTitle">Banner management</div>
					
					<div class="btn_div">
						<input class="btn btn-primary" type="button" value="더보기">
					</div>
				</div>
			</div>
		</div>
	</div>	
	<!-- 배경레이어를 담당 -->
	<!-- 부트스트랩 -->
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>
