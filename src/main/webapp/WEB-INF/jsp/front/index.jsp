<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/3/25
  Time: 14:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <title></title>
    <script src="js/hm.js"></script>
    <script>
        var _hmt = _hmt || [];
        (function() {
            var hm = document.createElement("script");
            hm.src = "https://hm.baidu.com/hm.js?c527cc6827eda1d8c54e9018cc6155d9";
            var s = document.getElementsByTagName("script")[0];
            s.parentNode.insertBefore(hm, s);
        })();
    </script>
    <!--    iframe自适应-->
    <!--    菜单-->
    <script type="text/javascript">
        function change_bg(obj)
        {
            var a=document.getElementById("Menu").getElementsByTagName("a");
            for(var i=0;i<a.length;i++)
            {
                a[i].className="";
            }
            obj.className="menu";
        }
    </script>
    <!--    end-->
    <style type="text/css">
        #body {
            width: 100%;
            max-width: 100%;
            margin: 0 auto;
        }

        iframe {
            width: 100%;
            margin: 0 0 1em;
            border: 0;
        }
    </style>
    <script type="text/javascript">
        function iframeLoad()
        {
            document.getElementById("iframe").height = 0;
            document.getElementById("iframe").height = document.getElementById("iframe").contentWindow.document.body.scrollHeight-20;
        }
    </script>
    <!--    end-->
    <meta name="viewport" content="width=device-width,height=device-height,initial-scale=1.0,maximum-scale=1.0,user-scalable=no">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="format-detection" content="telephone=no">
    <meta name="Keywords" content="">
    <meta name="renderer" content="webkit">
    C:\Code\website\src\main\webapp\WEB-INF\static\css\style_picture.css
    <link rel="stylesheet" href="WEB-INF/static/css/idangerous.swiper.css">
    <link rel="stylesheet" href="css/page.css">
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/style.css">
    <link href="img/32-32.png" rel="shortcut icon">
    <title>首页</title>
    <script src="js/jQuery.js" type="text/javascript" charset="utf-8"></script>
    <script src="js/main.js" type="text/javascript" charset="utf-8"></script>
    <script src="js/banner.js" type="text/javascript" charset="utf-8"></script>
    <script type="text/javascript" src="js/index.js"></script>
    <script src="js/idangerous.swiper-2.4.3.min.js" type="text/javascript" charset="utf-8"></script>
    <!--     菜单-->
    <style type="text/css">
        .menu {
            color: #035cac;
        }
    </style>
    <!--    end-->
</head>
<body>
<header class="header wrap fixed owrap">
    <div class="header-main">
        <div class="left fl">
            <a class="logo" href="l" style="float: left;"><img src="img/LOGO-02.png" style="margin-top: 20px;" alt="FAPS"></a>
            <div class="nav f-cb" style="margin-left: -15%;">
                <div id="container">
                    <ul style="float: right;" id="Menu">
                        <c:forEach items="${navigationBar}" var="map">
                            <c:choose>
                                <c:when test="${map.key == '关于我们'}">
                                    <li class="home">
                                        <a href="/navigation?navigationName=${map.key}" target="iframe" onclick="change_bg(this)">${map.key}</a>
                                    </li>
                                </c:when>
                                <c:otherwise>
                                    <li class="subli">
                                        <a href="/navigation?navigationName=${map.key}" target="iframe" onclick="change_bg(this)">${map.key}</a>
                                        <div class="subbox" style="display: none;">
                                            <c:forEach items = "${map.value}" var = "navigation">
                                                <a href="" target="iframe">${navigation.name}</a>
                                            </c:forEach>
                                        </div>
                                    </li>
                                </c:otherwise>
                            </c:choose>
                        </c:forEach>
                    </ul>
                </div>
            </div>
        </div>
        <span class="nav-ico fr" style="float: right;"></span>
        <div class="clear"></div>
    </div>
</header>
<!--返回顶部-->
<span class="m-close-search"></span>
<div style="position: fixed; right: 2%; top: 80%; z-index: 3; cursor: pointer; display: none;" class="syj">
    <img src="img/2.png" alt="">
</div>
<!--end-->
<div id="body">
    <iframe src="/aboutUs" name="iframe" id="iframe" scrolling="no" onload="iframeLoad()" frameborder="0" style="display:block;margin-bottom: 0">
    </iframe>
</div>
<section class="footer" id="foot1">
    <div class="warp">
        <div class="logo" style="width: 300px;"></div>
        <div class="menu">
            <ol>
                <dl> <a href="">关于我们</a></dl>
            </ol>
            <ol>
                <dl> <a href="research_center.html">研究中心</a></dl>
            </ol>
            <ol>
                <dl> <a href="">众创空间</a></dl>
            </ol>
            <ol>
                <dl> <a href="">产品与服务</a></dl>
            </ol>
            <ol>
                <dl> <a href="">新闻与热点</a></dl>
            </ol>
            <ol>
                <dl> <a href="">联系我们</a></dl>
            </ol>
            <div class="">
                <ul>
                    <li><img src="img/ewma.jpg" style="width: 100px; height: 100px; background: #FFFFFF;"></li>
                    <div class="clear"></div>
                    <li style="float: none;text-align: center; color: white;">企业微信</li>
                </ul>
            </div>
        </div>
        <div class="clean"></div>
    </div>
    <small> Copyright ©2020.All Rights FAPS Energy
        <a href="http://www.miit.gov.cn/index.html" class="copyright">
            备案号
        </a>
    </small>
</section>
<!--jquery-->
<script>$(function() {
    $(".syj").click(function() {
        $("html,body").stop().animate({
            scrollTop: 0
        }, 800);
    })
    $(window).scroll(function() {
        if ($(window).scrollTop() >= $(window).height() / 2) {
            $(".syj").show();
        } else {
            $(".syj").hide();
        }
    })
})</script>
<script>
    $(function(){
        if ((navigator.userAgent.indexOf('MSIE') >= 0) && (navigator.userAgent.indexOf('Opera') < 0)){
            $(".menu").css("margin-left","20%");
        }
    })
</script>
<!--end-->
</body>
</html>
