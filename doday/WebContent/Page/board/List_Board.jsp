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
	<link href="/css/board/style_boardList.css" rel="stylesheet" type="text/css">
	<script type="text/javascript" src="/js/board/list.js"></script>
	<title>오늘뭐해</title>
	
</head>
<body>
	<jsp:include page="/include/topBar.jsp" flush="true"/>
	<div class="container">
		<div class="blank"></div>
		<div class="row">
			<div class="col-md-6 search_div">
				<form id="search_form">
					<input type="button" class="btn btn-primary regionBtn" value="지역">
					<input type="button" class="btn btn-primary themaBtn" value="테마">
					<input class="searchValue" placeholder="검색어를 입력해주세요.">
					<input type="button" class="btn btn-primary searchBtn" value="검색">
					
				</form>
			</div>	
		</div>
		<div class="row">
			<div class="col-md-10 searchContent">
				<div class="searchVaule1">
					<div class="storeName_div">
						<div class="storeName">신가</div>
					</div>
					<div class="reviewContent1_div reviewDiv">
						<div class="img_div">
							<img class="reviewImg" src="/Image/reviewphoto.PNG">
						</div>
						<dl class="review_dl">
							<dt>신선한 고기 무한리필가게!</dt>
							<dd>무한리필로 든든하게 배를 채울 수 있는 고깃집인 신가입니다. 다른 고기 뷔페와는 다르게 두껍고 해동된 고기를 먹을 수 있어서 더욱 좋았습니다.</dd>
							<dd class="reactContent">
								<span class="heart_icon">♡</span>
								<em class="like_count">43</em>
								<img class="commentImage" src="/Image/comment.png">
								<em class="comment_count">9</em>
							</dd>
						</dl>
					</div>
					<div class="reviewContent2_div wait_div reviewDiv">
						<div class="img_div">
							<img class="reviewImg" src="/Image/reviewphoto.PNG">
						</div>
						<dl class="review_dl">
							<dt>신선한 고기 무한리필가게 2트!</dt>
							<dd>무한리필로 든든하게 배를 채울 수 있는 고깃집인 신가입니다. 다른 고기 뷔페와는 다르게 두껍고 해동된 고기를 먹을 수 있어서 더욱 좋았습니다.</dd>
							<dd class="reactContent">
								<span class="heart_icon">♡</span>
								<em class="like_count">43</em>
								<img class="commentImage" src="/Image/comment.png">
								<em class="comment_count">9</em>
							</dd>
						</dl>
					</div>
					<div class="reviewContent3_div wait_div reviewDiv">
						<div class="img_div">
							<img class="reviewImg" src="/Image/reviewphoto.PNG">
						</div>
						<dl class="review_dl">
							<dt>신선한 고기 무한리필가게 3트!</dt>
							<dd>무한리필로 든든하게 배를 채울 수 있는 고깃집인 신가입니다. 다른 고기 뷔페와는 다르게 두껍고 해동된 고기를 먹을 수 있어서 더욱 좋았습니다.</dd>
							<dd class="reactContent">
								<span class="heart_icon">♡</span>
								<em class="like_count">43</em>
								<img class="commentImage" src="/Image/comment.png">
								<em class="comment_count">9</em>
							</dd>
						</dl>
					</div>	
					<div class="arrow_div">
						<span class="arrowBox"><img type="button" class="arrow leftarrow" src="/Image/arrow_left.png"></span>
						<span class="arrowBox"><img type="button" class="arrow rigtharrow" src="/Image/arrow_right.png"></span>
					</div>
				</div>
			</div>
		</div>
		<!-- Thema Modal -->
		<div class="row">
			<div id="modal" class="modal thema">
				<div class="modal_content">
					<div class="themaBlank"></div>
					<div class="themaList">
						<div id="themaList1" class="btn btn-primary themaItem">카페</div>
				        <div id="themaList2" class="btn btn-primary themaItem">이색</div>
				        <div id="themaList3" class="btn btn-primary themaItem">레저</div>
					</div> 
					<div class="themaList">
						<div id="themaList4" class="btn btn-primary themaItem">VR</div>
				        <div id="themaList5" class="btn btn-primary themaItem">제작</div>
				        <div id="themaList6" class="btn btn-primary themaItem">힐링</div>
					</div>
					<div class="themaList">
						<div id="themaList7" class="btn btn-primary themaItem">맛집</div>
				        <div id="themaList8" class="btn btn-primary themaItem">포토스팟</div>
				        <div id="themaList9" class="btn btn-primary themaItem">연극</div>
					</div>
				    <button type="button" class="btn btn-primary mr-2 closeBtn thema">닫기</button>
				</div>	
				<div class="modal_layer"></div>	
			</div>
		</div>	
		
		
		
		<!-- Region Modal -->
		<div class="row">
			<div id="modal" class="modal region">
				<div class="modal_content">
					<div id=storeList class="list region">
						<div class="region bigList">
							<div class="region bigRegion">서울</div>
							<div class="region bigRegion">경기</div>
							<div class="region bigRegion">인천</div>
							<div class="region bigRegion">강원</div>
							<div class="region bigRegion">제주</div>
							<div class="region bigRegion">대전</div>
							<div class="region bigRegion">충북</div>
							<div class="region bigRegion">충남/세종</div>
							<div class="region bigRegion">부산</div>
							<div class="region bigRegion">울산</div>
							<div class="region bigRegion">경남</div>
							<div class="region bigRegion">대구</div>
							<div class="region bigRegion">경북</div>
							<div class="region bigRegion">광주</div>
							<div class="region bigRegion">전남</div>
							<div class="region bigRegion">전주/전북</div>
						</div>
						<div class="region smallList 1">
							<div id="samllRegion1" class="region smallRegion" >강남/역삼/삼성/논현</div>
							<div id="samllRegion2" class="region smallRegion" onclick="selectRegion();">서초/신사/방배</div>
							<div id="samllRegion3" class="region smallRegion" onclick="selectRegion();">잠심/신천(잠실새내)</div>
							<div id="samllRegion4" class="region smallRegion">영등포/여의도</div>
							<div id="samllRegion5" class="region smallRegion">신림/서울대/사당/동작</div>
							<div id="samllRegion6" class="region smallRegion">천호/길동/둔촌</div>
							<div id="samllRegion7" class="region smallRegion">화곡/까치산/양천/목동</div>
							<div id="samllRegion8" class="region smallRegion">구로/금천/오류/신도림</div>
							<div id="samllRegion9" class="region smallRegion">신촌/홍대/합정</div>
							<div id="samllRegion10" class="region smallRegion">연신내/불광/응암</div>
							<div id="samllRegion11" class="region smallRegion">종로/대학로</div>
							<div id="samllRegion12" class="region smallRegion">성신여대/성북/월곡</div>
							<div id="samllRegion13" class="region smallRegion">이태워/용산/서울역/명동/회현</div>
							<div id="samllRegion14" class="region smallRegion">동대문/동묘/신당/충무로/약수</div>
							<div id="samllRegion15" class="region smallRegion">회기/고려대/쳥량리/신설동</div>
							<div id="samllRegion16" class="region smallRegion">장안동/답십리</div>
							<div id="samllRegion17" class="region smallRegion">이태워/용산/서울역/명동/회현</div>
							<div id="samllRegion18" class="region smallRegion">동대문/동묘/신당/충무로/약수</div>
							<div id="samllRegion19" class="region smallRegion">회기/고려대/쳥량리/신설동</div>
							<div id="samllRegion20" class="region smallRegion">장안동/답십리</div>
						</div>
						
					</div>
					
					
					<button type="button" class="btn btn-primary mr-2 closeBtn region">닫기</button>
			</div>
		<div class="modal_layer"></div>	
		</div>	
		</div>
	</div>
	<!-- 부트스트랩 -->
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>