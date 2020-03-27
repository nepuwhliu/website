$(function() {
	$(".header .nav-ico").click(function() {
		if ($(".header .m-navwrap").is(":hidden")) {
			$(".header .m-navwrap").stop().slideDown()
		} else {
			$(".header .m-navwrap").stop().slideUp()
		}
	});
	$(".header .m-navwrap .tit").click(function() {
		if ($(this).siblings(".sub-box").is(":hidden")) {
			$(this).siblings(".sub-box").stop().slideDown().parent().siblings().find(".sub-box").slideUp()
		} else {
			$(this).siblings(".sub-box").stop().slideUp()
		}
	});
	$(".header .nav li.subli").hover(function() {
		var n = $(this).index();
		$(this).children(".subbox").stop(true, true).show();
		$(this).addClass("hover").siblings(".subli").removeClass("hover")
	}, function() {
		$(this).children(".subbox").stop(true, true).hide();
		$(this).removeClass("hover")
	});
	$(".nav-sub-wrap .boxs").hover(function() {
		var n = $(this).index();
		$(".header .nav li.subli").eq(n).addClass("hover")
	}, function() {
		$(".header .nav li.subli").removeClass("hover")
	});
	$(".footer .thibox .subbox li").hover(function() {
		$(this).stop().children(".second-level").show()
	}, function() {
		$(this).stop().children(".second-level").hide()
	})
});

function Hover(obj, calssName) {
	obj.hover(function() {
		$(this).addClass(calssName)
	}, function() {
		$(this).removeClass(calssName)
	})
};