$(document).ready(function() {
	loginCheck();
	titleOnclick();
});
//
function titleOnclick(){
	$("a#login.login").on("click",function(){
		alert("대강 로그인화면")
	});
}

//로그인햇는지 확인
function loginCheck(){
	var id= sessionStorage.getItem("id");
	if(id!==null){
		loginMenu(id);
	}else{
		unloginMenu();
	}
}
//로그인 햇을경우
function loginMenu(id){
	var loginText = '<a class="nav-link dropdown-toggle" href="#" id="navbargrop" data-toggle="dropdown">'+id+'</a>'
	var infoMenu ='<div class="dropdown-menu  dropdown-menu-right">'
	+	'<a class="dropdown-item" href="#">내정보</a>'
	+	'<a class="dropdown-item" href="#">즐겨찾기</a>'
	+'</div>'
	$(".userLog").empty();
	$(".userLog").append(loginText);
	$(".userLog").append(infoMenu);
}
//로그인 하지않은상태일떄
function unloginMenu(){
	var loginText ='<a class="nav-link login" id="login" >로그인</a>'
	$(".userLog").empty();
	$(".userLog").append(loginText);
}
//로그아웃햇을때
function logout(){
	sessionStorage.removeItem("a")
}