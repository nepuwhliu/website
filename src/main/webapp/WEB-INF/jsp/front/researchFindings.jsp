<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/3/27
  Time: 10:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>研究成果</title>
    <link rel="stylesheet" type="text/css" href="css/htmleaf-demo.css">
    <link rel="stylesheet" type="text/css" href="css/nav.css">
    <link rel="stylesheet" type="text/css" href="fonts/iconfont.css">
    <script src="http://cdn.bootcss.com/jquery/1.11.0/jquery.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="js/nav.js"></script>
    <!--    iframe自适应-->
    <style type="text/css">
        #body {
            width: 70%;
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
            document.getElementById("iframe_T").height = 0;
            document.getElementById("iframe_T").height = document.getElementById("iframe_T").contentWindow.document.body.scrollHeight;
            window.parent.iframeLoad();
        }
    </script>
    <!--    end-->
</head>
<body>
<div class="nav">
    <div class="nav-top">
        <div id="mini" style="border-bottom:1px solid rgba(255,255,255,.1)"><img src="img/mini.png" ></div>
    </div>
    <ul>
        <c:forEach items="${researchProcessList}" var="researchProcess">
            <li class="nav-item">
                <a href="Article.html" target="iframe_T" onload="iframeLoad()"><i class="my-icon nav-icon icon_1"></i><span>${researchProcess.content}</span></a>

            </li>
        </c:forEach>
    </ul>
</div>

<div id="body">
    <iframe src="Article.html" name="iframe_T" id="iframe_T" scrolling="no" onload="iframeLoad()" frameborder="0">

    </iframe>
</div>
<!--jquery-->
<script>window.jQuery || document.write('<script src="js/jquery-1.11.0.min.js"><\/script>')</script>
<!--end-->
</body>
</html>
