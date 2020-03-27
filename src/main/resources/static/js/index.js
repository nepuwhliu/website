$(function() {
	$(".xz").click(function() {
		var _id = $(this).attr("id");
		$(this).siblings().removeClass("hover");
		$(this).addClass("hover");
		$("." + _id).show();
		$("." + _id).siblings().hide()
	})
});
$(function() {
	$(".header").addClass("fixed");
	$(".banner").addClass("margin");
	$(".i-wrap4 .scroll").each(function() {
		var listN = $(this).find("ul").length;
		var _this = $(this);
		for (i = 0; i < listN; i++) {
			_this.find(".scroll-btn").append('<span class="span' + i + ' png"></span>')
		}
	});
	$(function() {
		var _w = $(window).width();
		if (_w < 2300 && _w > 1200) {
			$(".wrap").addClass("owrap").removeClass("twrap").removeClass("m-wrap");
			$(".i-wrap").removeClass("i-mwrap");
			$(".footer").removeClass("m-footer");
			$(".i-m-wrap").hide();
			$(".m-banner").hide();
			$("#foot1").show();
			$("#foot2").hide();
			$(".banner").show()
		} else {
			if (_w <= 1200 && _w > 768) {
				$(".wrap").addClass("twrap").removeClass("owrap").removeClass("m-wrap");
				$(".i-wrap").removeClass("i-mwrap");
				$(".footer").removeClass("m-footer");
				$(".i-m-wrap").hide();
				$(".m-banner").hide();
				$("#foot1").show();
				$("#foot2").hide();
				$(".banner").show()
			} else {
				if (_w <= 768) {
					$(".wrap").addClass("m-wrap").removeClass("twrap").removeClass("owrap");
					$(".i-wrap").addClass("i-mwrap");
					$(".footer").addClass("m-footer");
					$(".i-m-wrap").show();
					$(".banner").hide();
					$("#foot2").show();
					$("#foot1").hide();
					$(".tib").hide();
					$(".m-banner").show();
					$(".header").removeClass("fixed");
					$(".banner").removeClass("margin")
				} else {
					$(".wrap").removeClass("twrap").removeClass("owrap").removeClass("m-wrap");
					$(".i-wrap").removeClass("i-mwrap");
					$(".footer").removeClass("m-footer");
					$(".i-m-wrap").hide();
					$(".m-banner").hide();
					$(".banner").show()
				}
			}
		}
		$(window).scroll(function() {
			if ($(window).scrollTop() > 0) {
				$(".header").addClass("short")
			} else {
				$(".header").removeClass("short")
			}
		});
		$(".footer .thibox .link").hover(function() {
			$(this).find(".subbox").stop(true, true).slideDown()
		}, function() {
			$(this).find(".subbox").stop(true, true).slideUp()
		});
		$(".m-footer .bot-linkbox .tt").click(function() {
			if ($(this).siblings(".subbox").is(":hidden")) {
				$(this).siblings(".subbox").slideDown();
				$(this).addClass("hover")
			} else {
				$(this).siblings(".subbox").slideUp();
				$(this).removeClass("hover")
			}
		});
		$(".footer-main.m-wrap dl").eq(0).find("dd").show();
		$(".footer-main.m-wrap dl").eq(0).find("dt").addClass("hover");
		$(".footer-main.m-wrap dt").click(function() {
			if ($(this).siblings("dd").is(":hidden")) {
				$(this).siblings("dd").slideDown();
				$(this).addClass("hover")
			} else {
				$(this).siblings("dd").slideUp();
				$(this).removeClass("hover")
			}
		});
		$(".i-wrap2 .navbox li").eq(0).addClass("hover");
		swiper = new Swiper(".m-banner", {
			pagination: ".pagination",
			loop: true,
			paginationClickable: true,
			autoplay: 3000
		});
		$(".m-banner .btn-box").width($(".m-banner .btn-box span").length * 10);
		$(".m-banner .btn-box").css("margin-left", -$(".m-banner .btn-box").width() / 2);
		swiper = new Swiper(".wrap-fou .newslist", {
			pagination: ".n-pagination",
			loop: true,
			paginationClickable: true,
			autoplay: 3000
		});
		$(".i-m-wrap .wrap-fou .n-pagination").css("margin-left", -$(".i-m-wrap .wrap-fou .n-pagination").width() / 2);
		$(".i-m-wrap .wrap-thi .up-box,.i-m-wrap .wrap-thi video,.i-m-wrap .wrap-thi li").attr("style", "");
		$(".i-m-wrap .wrap-thi .up-box,.i-m-wrap .wrap-thi video,.i-m-wrap .wrap-thi li").height($(".i-m-wrap .wrap-thi .up-box img").height());
		$(".i-m-wrap .wrap-thi .up-box").click(function() {
			$(this).hide().siblings("video").click()
		})
	})
});

function scroll(obj) {
	var list = obj;
	var listN = list.find("ul").length;
	obj.find("ul").attr("style", "");
	obj.find("ul").each(function() {
		$(this).width($(this).width());
		if ($(this).width() < $(this).siblings("ul").width()) {
			$(this).width($(this).siblings("ul").width())
		}
	});
	obj.find(".center-list").each(function() {
		$(this).find(".bd").width($(this).find("ul").width() * $(this).find("ul").length)
	});
	var sw = 0;
	myShow(sw);
	obj.find(".scroll-btn span").mouseover(function() {
		sw = $(this).index();
		myShow(sw)
	});

	function myShow(sw) {
		var _this = $(this);
		obj.find(".scroll-btn").each(function() {
			$(this).find("span").eq(sw).addClass("on").siblings("span").removeClass("on")
		});
		obj.find(".bd").each(function() {
			$(this).stop(true, true).animate({
				marginLeft: -$(this).find("ul").width() * sw
			}, 1000)
		})
	}
	obj.find(".prev").click(function() {
		var n = $(".scroll-btn span.on").index();
		if (n == 0) {
			n = $(".scroll-btn span").length - 1
		} else {
			n--
		}
		myShow(n)
	});
	obj.find(".next").click(function() {
		var n = $(".scroll-btn span.on").index();
		if (n == $(".scroll-btn span").length - 1) {
			n = 0
		} else {
			n++
		}
		myShow(n)
	});
	obj.hover(function() {
		if (myTime) {
			clearInterval(myTime)
		}
	}, function() {
		clearInterval(myTime);
		myTime = setInterval(function() {
			myShow(sw);
			sw++;
			if (sw == listN) {
				sw = 0
			}
		}, 4000)
	});
	myTime = setInterval(function() {
		myShow(sw);
		sw++;
		if (sw == listN) {
			sw = 0
		}
	}, 4000)
};