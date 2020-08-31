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

	
			
		