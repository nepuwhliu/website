<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/3/27
  Time: 11:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html class=" -webkit-">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width,height=device-height,initial-scale=1.0,maximum-scale=1.0,user-scalable=no">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="format-detection" content="telephone=no">
    <title>实验研究</title>
    <link rel="stylesheet" href="css/page.css" />
    <link rel="stylesheet" href="css/reset.css" />
    <link rel="stylesheet" href="css/style.css" />
    <link href="img/32-32.png" rel="shortcut icon">
    <script src="js/jQuery.js" type="text/javascript" charset="utf-8"></script>
    <script src="js/main.js" type="text/javascript" charset="utf-8"></script>
</head>
<body>
<!--返回顶部-->
<span class="m-close-search"></span>
<div style="position: fixed; right: 2%; top: 80%; z-index: 3; cursor: pointer; display: none;" class="syj">
    <img src="img/2.png" alt="">
</div>
<!--end-->
<div class="news-infor">
    <div class="blackbg"></div>
    <div class="wrap2 wrap bg-gray owrap">
        <!--<div class="load-bg" style="display: none;"></div>-->
        <div class="main" id="main">
            <c:forEach items="${itemResearchList}" var="itemResearch">
                <div class="box">
                    <a href="">
                        <span class="f18">${itemResearch.projectname}</span>
                        <span>${itemResearch.projecttime}</span>
                        <span class="img">
                            <img class="bg-pic" src="${itemResearch.projectimage}" alt="">
                        </span>
                        <span class="word">${itemResearch.projectabstract}</span>
                        <span class="more">查看详情</span>
                    </a>
                </div>
            </c:forEach>
        </div>
    </div>
</div>
<div style="float:center; font-size:12px; margin-top:8px; margin-bottom:8px; text-align:center; margin-right:13px; display:none"></div>
<!--jquery-->
<script>
    $(function(){
        $(".syj").click(function(){
            $("html,body").stop().animate({scrollTop:0},800);
        })
        $(window).scroll(function(){
            if($(window).scrollTop()>=$(window).height()/2){
                $(".syj").show();
            }else{
                $(".syj").hide();
            }
        })
    })
</script>
<script>
    $(function(){
        if ((navigator.userAgent.indexOf('MSIE') >= 0) && (navigator.userAgent.indexOf('Opera') < 0)){
            $(".menu").css("margin-left","20%");
        }
    })
</script>
<script>
    var myTime;
    $(function(){
        var listN = $(".top-wrap .left li").length;
        for(i = 0; i < listN; i++){
            $(".top-wrap .left").find('.btnbox').append('<span class="span'+i+' png"></span>');
        }
        $(".ins-navbox .return-top").click(function() {
            $("html,body").stop().animate({scrollTop: 0});
        });
        $(".news-home .wrap2 .navbox a").eq(1).addClass('hover');

        $(function(){
            // $(".top-wrap .left ul").width($(".top-wrap .left li").width() * $(".top-wrap .left li").length + 1);
            $(".load-bg").hide();
            $(".wrap2 .main").stop().animate({opacity: 1}, 300);

            var _w = $(window).width();

            if(_w < 2300 && _w > 1200){
                $(".top-wrap .left,.top-wrap .left-scroll").show();
                $(".wrap").addClass('owrap').removeClass('twrap').removeClass('m-wrap');
                $(".footer").removeClass('m-footer');
                $(".news-infor").removeClass('m-wrap');
                $("#foot1").show();
                $("#foot2").hide();
                $(".lb").show();
                $("#tb").show();
            }else if (_w <= 1200 && _w > 768) {
                $(".top-wrap .left,.top-wrap .left-scroll").show();
                $(".wrap").addClass('twrap').removeClass('owrap').removeClass('m-wrap');
                $(".footer").removeClass('m-footer');
                $(".news-infor").removeClass('m-wrap');
                $("#foot1").show();
                $("#foot2").hide();
                $(".lb").show();
                $("#tb").show();
            }else if (_w <= 768) {
                $(".top-wrap .left,.top-wrap .left-scroll").hide();
                $(".wrap").addClass('m-wrap').removeClass("twrap").removeClass('owrap');
                $(".footer").addClass('m-footer');
                $(".header").removeClass('fixed');
                $(".ins-banner").removeClass('margin');
                $(".m-ins-navbox").show();
                $("#foot2").show();
                $("#foot1").hide();
                $(".lb").hide();
                $("#tb").hide();
                $(".news-infor").addClass('m-wrap');
                $(window).scroll(function() {
                    var n = $(".ins-banner").height() + $(".header.m-wrap").height();
                    if ($(window).scrollTop() >= n) {
                        $(".news-infor").css('margin-top', '38px');
                        $(".m-ins-navbox").addClass('fixed');
                    }else{
                        $(".news-infor").css('margin-top', '0');
                        $(".m-ins-navbox").removeClass('fixed');
                    }
                });
            }else{
                $(".top-wrap .left,.top-wrap .left-scroll").show();
                $(".wrap").removeClass('twrap').removeClass('owrap').removeClass('m-wrap');
                $(".footer").removeClass('m-footer');
                $(".news-infor").removeClass('m-wrap');
                $(window).scroll(function() {
                    var n = $(".ins-banner").height() + 151;
                    if ($(window).scrollTop() >= n) {
                        $(".ins-navbox").addClass('fixed');
                        $(".news-infor").css('margin-top', '76px');
                    }else{
                        $(".ins-navbox").removeClass('fixed');
                        $(".news-infor").css('margin-top', '0');
                    }
                });
            }
            if (_w <= 1010 && _w > 768) {
                $(".wrap").addClass('long-wrap');
            }else{
                $(".wrap").removeClass('long-wrap');
            }

            $(".top-wrap .left li,.top-wrap .left ul,.top-wrap .left li a").attr("style", "");
            $(".top-wrap .left li").width($(".top-wrap .left li").width());
            $(".footer-main.m-wrap dl").eq(0).find('dd').show();
            $(".footer-main.m-wrap dl").eq(0).find('dt').addClass('hover');
            $(".m-botwrap .bot-linkbox .tt").click(function() {
                if ($(this).siblings('.subbox').is(':hidden')) {
                    $(this).siblings('.subbox').slideDown();
                    $(this).addClass('hover');
                }else{
                    $(this).siblings('.subbox').slideUp();
                    $(this).removeClass('hover');
                }
            });
            $(".footer-main.m-wrap dl").eq(0).find('dd').show();
            $(".footer-main.m-wrap dl").eq(0).find('dt').addClass('hover');
            $(".footer-main.m-wrap dt").click(function() {
                if ($(this).siblings('dd').is(':hidden')) {
                    $(this).siblings('dd').slideDown();
                    $(this).addClass('hover');
                }else{
                    $(this).siblings('dd').slideUp();
                    $(this).removeClass('hover');
                }
            });
            $(".footer .thibox .link").hover(function() {
                $(this).find('.subbox').stop(true,true).slideDown();
            }, function() {
                $(this).find('.subbox').stop(true,true).slideUp();
            });

            $(".m-ins-navbox .right .tit").click(function() {
                if ($(this).siblings('.subbox').is(':hidden')) {
                    $(".news-infor.m-wrap .blackbg").show();
                    $(this).siblings('.subbox').slideDown();
                }else{
                    $(".news-infor.m-wrap .blackbg").hide();
                    $(this).siblings('.subbox').slideUp();
                }
            });
            $(".m-ins-navbox .left .ico").click(function() {
                if ($(".m-ins-navbox .ret-subbox").is(':hidden')) {
                    $(".news-infor.m-wrap .blackbg").show();
                    $(".m-ins-navbox .ret-subbox").slideDown();
                }else{
                    $(".news-infor.m-wrap .blackbg").hide();
                    $(".m-ins-navbox .ret-subbox").slideUp();
                }
            });

            window.onload = function() {
                waterFall("main");
            }

            var list = $(".top-wrap .left");
            var listN = list.find('li').length;
            setTimeout(function(){
                list.find('ul').width(list.find('li').width()*listN);
            },400)

            list.find('.btnbox').css("margin-left", -$(".btnbox").width()/2);
        });
    })
    function waterFall(element,space,children) {
        if(!element) return ;
        space = space || 20 ;
        children = children || "div" ;        //前三行默认设置，分别为外框元素id，上下留白，子元素标签名(子元素标签名使用太多或出错)
        var wrap = document.getElementById(element) ;
        var water = wrap.getElementsByTagName(children) ;
        var spaceWidth = water[0].offsetWidth ;        //获取子元素宽度(offsetWidth会获取块级元素的padding和border)
        var wrapWidth = wrap.offsetWidth ;        //获取外框元素宽度
        var colNum = Math.floor(wrapWidth/spaceWidth) ;        //计算获取外框元素所能承受列数
        var padding = Math.floor((wrapWidth - colNum*spaceWidth)/(colNum+1)) ;        //计算外框元素剩余宽度并计算左右留白
        var column = new Array() ;
        var length = water.length ;
        var maxHeight = 0 ;
        for(var i=0;i<colNum;i++) {        //初始化数组来计算各列初始top值和left值
            column[i] = new Array() ;
            column[i].top = space;
            column[i].left = (spaceWidth * i)+padding*(i+1) ;        //计算各列距离左侧距离
        }
        for(var i=0;i<length;i++) {        //遍历所有子元素及瀑布流布局
            var index = i+1 ;        //计算该子元素属于第几列
            if(index%colNum==0) {
                sub = colNum ;
            } else {
                sub = index%colNum ;
            }
            _this = water ;
            _this[i].style.position = "absolute" ;
            _this[i].style.top = column[sub-1].top + "px" ;
            _this[i].style.left = column[sub-1].left + "px" ;
            column[sub-1].top += _this[i].offsetHeight + space ;        //计算各列最新高度以便赋值
        }
        for(var i=0;i<colNum;i++) {        //获取瀑布流整体布局高度
            if(column[i].top > maxHeight) maxHeight = column[i].top ;
        }
        wrap.style.height = maxHeight+"px" ;        //给外框元素赋值以防止出现子元素溢出外框元素
    }
</script>
</body>
</html>


