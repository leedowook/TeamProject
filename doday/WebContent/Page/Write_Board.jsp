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

	<!-- smartEdit -->
	<script type="text/javascript" src="../se2/js/HuskyEZCreator.js" charset="utf-8"></script>
	

	<!-- 부트스트랩 -->
	
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
	<!-- 스타일 -->
		<link href="/css/bootstrap.min.css" rel="stylesheet" type="text/css">
		<link href="/css/bootstrapCustom.css" rel="stylesheet" type="text/css">
		<link href="/css/style_boardWrite.css?after" rel="stylesheet" type="text/css">
	
	<title>오늘뭐해</title>
	
	<script>
	$(document).ready(function(){
		var iframe = $(".edit_div").children("iframe");
		console.log(iframe);
		iframe.addClass("col-10");
		iframe.addClass("col-md-10");	
		
		$("#btnStoreName").click(function(){
			$(".modal.store").css("display","block");
		})
		$(".closeBtn.store").click(function(){
			$(".modal.store").css("display","none");
		})
		$("#themaBtn").click(function(){
			$(".modal.thema").css("display","block");
		})
		$(".closeBtn.thema").click(function(){
			$(".modal.thema").css("display","none");
		})
		$("#regionBtn").click(function(){
			$(".modal.region").css("display","block");
		})
		$(".closeBtn.region").click(function(){
			$(".modal.region").css("display","none");
		})
		$(".region.smallRegion").on('click', function(){
			selectRegion(this);
		});
		$(".themaItem").on('click',function(){
			selectThema(this);
		});
	
		
	});

	function selectRegion(tag){
		var getId = $(tag).attr('id');
		console.log(getId);
		var region = $("#"+getId).text();
		$("#regionView").html(region);
		$(".modal.region").css("display","none");
	}

	function selectThema(tag){
		var getId = $(tag).attr('id');
		var thema = $("#"+getId).text();
		console.log(thema);
		$("#themaView").html(thema);
		$(".modal.thema").css("display","none");
	}

	
			
		
	</script>
	
	
</head>
<body>


	<jsp:include page="../include/topBar.jsp" flush="true"/>
	<div class="container">
		<div class="row">
			<div class="blank"></div>
		</div>
	<form>
		<div class="row">
			<div class="title_div col-md-12">
				<div class="form-group row">
					<label class="input_label col-form-label form-control-label pannelText col-2 col-md-2" for="title">제목 </label> 
					<input id="title" class="form-control input col-8 col-md-8" Name="title" type="text">
				</div>
			</div>
			<div class="title_div col-md-12">
				<div class="form-group row">
					<label class="input_label col-form-label form-control-label pannelText col-2 col-md-2" for="StoreName">가게이름 </label> 
					<input class="form-control input col-6 col-md-6" type="text" id="StoreName" Name="StoreName">
					<input type="button" class="col-2 col-md-2 btn btn-primary tempBtn ml-2" id="btnStoreName" value="search">
					
				</div>
			</div>
		</div>
		<div class="row">
			<span id="themaView" class="select thema mr-2 offset-1 offset-md-1">미정</span>
			<input type="button" id="themaBtn" class="btn btn-primary mr-2 tempBtn thema" value="테마">
			<span id="regionView" class="form-control select region">미정</span>
			<input type="button" id="regionBtn" class="btn btn-primary mr-2 tempBtn region" value="지역">
		</div>
		<div class="row edit_div">
			<textarea name="boardContent" class="col-12 col-md-12" id="boardContent" rows="12" cols="100" ></textarea><br>
			
			<div class="col-md-6 offset-md-6 actionBtn_div">
				<input type="button" id="saveBtn" class="col-3 col-md-3 btn btn-primary tempBtn" value="작성완료" style="float:right">
				<input type="button" id="cancelBtn" class="col-3 col-md-3 btn btn-primary mr-2 tempBtn" value="취소" style="float:right">
			</div>	
		</div>
		
		<!-- StoreName Modal -->
		<div class="row">
			<div id="modal" class="modal store">
				<div class="modal_content">
					<input id="storeValue" class="storeValue" placeholder="가게이름을 검색해주세요.">
					<input type="button" class="btn btn-primary storeSearchBtn" value="검색">
					<div id=storeList class="List">
						<div class="resultList">검색결과 없음</div>	
					</div>
					<button type="button" class="btn btn-primary mr-2 closeBtn store">닫기</button>
			</div>
		<div class="modal_layer"></div>	
		</div>	
		</div>	
		
		<!-- Thema Modal -->
		<div class="row">
			<div id="modal" class="modal thema">
				<div class="modal_content">
					<div class="blank"></div>
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
		</form>
		</div>	
		
		<!-- 배경레이어를 담당 -->
		
		
		
	

		
	
	<!-- 부트스트랩 -->
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
	
</body>
<script type="text/javascript">
	var oEditors = []; 
	nhn.husky.EZCreator.createInIFrame({ 
		oAppRef : oEditors, 
		elPlaceHolder : "boardContent", 
		sSkinURI : "../se2/SmartEditor2Skin.html", 
		fCreator : "createSEditor2", 
		htParams : { 
			// 툴바 사용 여부 (true:사용/ false:사용하지 않음) 
			bUseToolbar : true, 
			// 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음) 
			bUseVerticalResizer : false, 
			// 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음) 
			bUseModeChanger : false } 
	});
</script>
</html>
