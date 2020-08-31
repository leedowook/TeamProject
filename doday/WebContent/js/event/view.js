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