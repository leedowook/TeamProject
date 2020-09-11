$(document).ready(function() {
	loginCheck();
	titleOnclick();
});
//
function titleOnclick(){
	$("a#login.login").on("click",function(){
		location.href="/doday/Page/user/Login.jsp"
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
	+	'<a id="profile" class="dropdown-item" href="#">내정보</a>'
	+	'<a class="dropdown-item" href="#">즐겨찾기</a>'
	+	'<a id="logoutBtn" class="dropdown-item" href="#">로그아웃</a>'
	+'</div>'
	$(".userLog").empty();
	$(".userLog").append(loginText);
	$(".userLog").append(infoMenu);
	
	$("#logoutBtn").on("click",function(){
		logout();
		
	});
	
	$("#profile").on("click",function(){
		profile();
	})
}
//로그인 하지않은상태일떄
function unloginMenu(){
	var loginText ='<a class="nav-link login" id="login" >로그인</a>'
	$(".userLog").empty();
	$(".userLog").append(loginText);
}
//로그아웃햇을때
function logout(){
	sessionStorage.removeItem("id")
	location.href = "/doday/index.jsp";
	unloginMenu();
	titleOnclick();
}

function profile(){
	location.href = "/doday/Page/user/Profile.jsp";
}