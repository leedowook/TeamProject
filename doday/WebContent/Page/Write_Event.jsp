<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	
	<meta charset="UTF-8">
	<title>이벤트 신청페이지</title>
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
	<script>
		$(document).ready(function(){
			var iframe = $(".edit_div").children("iframe");
			console.log(iframe);
			iframe.addClass("col-10");
			iframe.addClass("col-md-10");
		});

	</script>
	<title>오늘뭐해</title>

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
					<label class="input_label col-form-label form-control-label pannelText col-2 col-md-2" for="StoreName">기간 </label> 
					<input class="form-control input col-5 col-md-5" type="text" id="StoreName" Name="StoreName">
					
				</div>
			</div>
		</div>
		
		<div class="row edit_div">
			<textarea name="boardContent" class="col-12 col-md-12" id="boardContent" rows="12" cols="100" ></textarea><br>
			
			<div class="col-md-6 offset-md-6 actionBtn_div">
				<input type="button" id="saveBtn" class="col-3 col-md-3 btn btn-primary tempBtn" value="신청하기" style="float:right">
				<input type="button" id="cancelBtn" class="col-3 col-md-3 btn btn-primary mr-2 tempBtn" value="취소" style="float:right">
			</div>
		</div>
	</form>
</div>	
						
		
		
		
		
	

		
	
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
