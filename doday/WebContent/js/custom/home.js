// 로딩될때
$(function() {
    
});
//모두 로딩되었을때
$(document).ready(function() {
	titleOnclick();
	/*$.getJSON("http://api.ipify.org?format=jsonp&callback=?",
			function(json){
		document.write(json.ip);
	});*/
	serach();
});
//onclick 액션


//배너의 추천란 클릭시
function titleOnclick(){
	$(".card-title").on("click",function(){
		console.log("titleClick")
		
	});
}

function simpleSearchChangeDisplay(){
	$(".card-title").on("click",function(){
		console.log("searchClick");
		$("#searchPlace").hasClass("col-" +
				"");
	});
}
function getIP(json){
	document.write(json.ip)
}
	

function serach(){
	$("#simpleSearchText").keyup(function(key){
		if(key.keyCode == 13){
			alert("앙~검색띠");
		}
	});	
	$(".serachBtn").on("click",function(){
		alert("앙~검색띠");
	});
}


