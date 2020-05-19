<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<!-- 스크립트 -->
	<!-- jQuery -->
	<script src="http://code.jquery.com/jquery-3.4.1.min.js"> </script>
	
	
	<!-- 부트스트랩 -->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
	
	<!-- 스타일 -->
	<link href="/css/bootstrap.min.css" rel="stylesheet" type="text/css">
	<link href="/css/bootstrapCustom.css" rel="stylesheet" type="text/css">
	<link href="/css/style_boardView.css" rel="stylesheet" type="text/css">
	
	<title>오늘뭐해</title>
	
	<script>
	$(document).ready(function(){
		var a = 0;
		$(".comment_textArea").focus(function(){
			$(".comment_textArea").attr("placeholder","");
			
		});
		$(".comment_textArea").blur(function(){
			var text = $(".comment_textArea").val();
			if(text.trim()==""){
				$(".comment_textArea").attr("placeholder","댓글을 입력해주세요.");
			}

		});

	
		$(".commentImage").click(function(){
			if(a%2 == 0){
				$(".comment").css("display","block");
				console.log(a);
				a++;
			}else if(a%2 == 1){
				$(".comment").css("display","none");
				console.log(a);
				a++;
			}else{
				alert("comment function error!");
			}
			
		});

	});


	</script>
	
</head>
<body>
	<jsp:include page="/include/topBar.jsp" flush="true"/>
	<div class="co ntainer">
		<div class="row">
			<div class="blank"></div>
		</div>
		<div class="row">
			<table id="boardInfoTable" class="offset-sm-1 col-sm-10 boardInfoTable">
				<thead>
					<tr class="topTr">
						<th colspan=3 class="needRightBorder">(서비스가 콸콸콸~)</th>
						<th>닉네임</th>
					</tr>
					<tr>
						<th class="needRightBorder">가게이름</th>
						<th class="needRightBorder">(가게이름)</th>
						<th class="needRightBorder">(지역)</th>
						<th class="needRightBorder">(테마)</th>
						
					</tr>
				</thead>
				<tbody>
					<tr>
						<th colspan=4>게시내용</th>
					</tr>
				</tbody>
			</table>
		</div>
		<div class="row">
			<div class="col-sm-3 offset-sm-1 inlineBlockDiv">
				<div class="like_div inlineBlockDiv">
					<div class="inlineBlockDiv likeBox">♡</div>
					<div class="inlineBlockDiv likeCount">10</div>
				</div>
				<div class="inlineBlockDiv comment_div">
					<img type="button" class="inlineBlockDiv commentImage" src="../Image/comment.png">
					<div class="inlineBlockDiv commentCount">12</div>
				</div>
			</div>
			<input type="button" id="saveBtn" class="offset-sm-4 col-sm-1 btn btn-primary mr-1 tempBtn" value="수정하기" style="float:right">
			<input type="button" id="saveBtn" class="col-sm-1 btn btn-primary mr-1 tempBtn" value="목록" style="float:right">
			<input type="button" id="cancelBtn" class=" col-sm-1 btn btn-primary mr-1 tempBtn" value="추천하기" style="float:right">		
		</div>
		
		<!-- 댓글관련 -->
		<div class="row">
			<div class="offset-sm-2 col-sm-8 commentBoard comment">
				<textarea class="comment_textArea" placeholder="댓글을 입력해주세요."></textarea>
				<input type="button" class="commentBtn btn btn-primary" value="등록">
			</div>
		</div>
		<div class="row">
			<div class="col-sm-6 comment_list comment">
				<table class="commentBoard_table">
					<tr>
						<th colspan=2>작성자</th>
					</tr>
					<tr>
						<td colspan=2>내용</td>
					</tr>
					<tr>
						<td class="commentData commentLastTd">날짜</td>
						<td class="commentLastTd">
							<button type="button" class="commentDeleteBtn">삭제</button>
						</td>
					</tr>
				</table>
			</div>
		</div>
		
	</div>	
		
	<!-- 부트스트랩 -->
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>