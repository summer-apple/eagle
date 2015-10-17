	$().ready(function(){

		//下拉菜单
		$(".nav-item").mouseover(function(){
			$(this).find(".dropdown").slideDown(0);
		}).mouseleave(function(){
			$(this).find(".dropdown").slideUp(0);
		});

		//搜索框
		var $key = $("#key");
		var $icon = $(".search-icon");

		$key.mouseover(function(){
			$key.addClass("input-border");
		}).blur(function(){
			if ($key.val()=="") {
				$key.removeClass("input-width").removeClass("input-border");
				$(".sub-btn").removeClass("sub-btn").addClass("search-icon");
			}
		}).mouseleave(function(){
			if(!$key.is(":focus") && $key.val()==""){
				$key.removeClass("input-border");
			}
			
		}).click(function(){
			$key.addClass("input-width").addClass("input-border");
			$icon.addClass("sub-btn").removeClass("search-icon");
		});

		if($key.width()==25){//无焦点

			$key.val("");

			$icon.click(function(){
				$key.addClass("input-border").addClass("input-width").focus();
				$icon.addClass("sub-btn").removeClass("search-icon");
			}).mouseover(function(){
				$key.addClass("input-border");
			}).mouseleave(function(){
				$key.removeClass("input-border");
			});
		}else{//有焦点
			
		}


			$(document).on("click",".sub-btn",function(){
				if ($key.val()!="") {
					$("#search-form").submit();
				}
			});
		


	});