$(document).ready(function(){
	$(".rigtharrow").click(function(){
		$(".reviewContent1_div").css("display","none");
		$(".reviewContent2_div").css("display","block");
	});
			
	$(".themaBtn").click(function(){
		$(".modal.thema").css("display","block");
	})
	$(".closeBtn.thema").click(function(){
		$(".modal.thema").css("display","none");
	})
	$(".regionBtn").click(function(){
		$(".modal.region").css("display","block");
	})
	$(".closeBtn.region").click(function(){
		$(".modal.region").css("display","none");
	})
			
	//modal click event
	$(".region.smallRegion").on('click', function(){
		selectRegion(this);
	});
	$(".themaItem").on('click',function(){
		selectThema(this);
	});


	//input search focus event
	$(".searchValue").focus(function(){
		$(".searchValue").attr("placeholder","");
	});
	$(".searchValue").blur(function(){
		var text = $(".searchValue").val();
		if(text.trim()==""){
			$(".searchValue").attr("placeholder","검색어를 입력해주세요.");
		}
	});
	selectReview();		
});
function selectReview(){
	$(".reviewContent1_div").on("click",function(){
		location.href = "/Page/board/View_Board.jsp";
	});	
}
function selectRegion(tag){
	var getId = $(tag).attr('id');
	var region = $("#"+getId).text();
	console.log(region);
	$(".regionBtn").val(region);
	$(".modal.region").css("display","none");
}

function selectThema(tag){
	var getId = $(tag).attr('id');
	var thema = $("#"+getId).text();
	$(".themaBtn").val(thema);
	$(".modal.thema").css("display","none");
}