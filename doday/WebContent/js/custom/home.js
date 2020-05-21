// 로딩될때
$(function() {
    
});
//모두 로딩되었을때
$(document).ready(function() {
	titleOnclick();
});
//onclick 액션

//배너의 추천란 클릭시
function titleOnclick(){
	$(".card-title").on("click",function(){
	console.log("titleClick")
	});
}