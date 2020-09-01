$(document).ready(function(){
	
	allCheck();
	lineCheck();
	
});

function allCheck(){
	$("#chk_all").click(function(){;
		if($("#chk_all").is(":checked")){
			$(".chk").prop("checked", true);
			console.log("true");
		}else{
			$(".chk").prop("checked", false);
			console.log("false");
		}
	});
}

function lineCheck(){
	$("th").click(function(){
		var a = this;
		var b = $(a).parents("tr");
		var c = $(b).find("input");			

		console.log($(c).attr("id"));
		if($(c).attr("id") != "chk_all"){
			if($(c).is(":checked")){
				console.log("ccc");
				$(c).prop("checked", false);	
			}else{
				$(c).prop("checked", true)	
			}	
		}
	})
}