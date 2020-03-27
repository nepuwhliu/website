<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/3/27
  Time: 10:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>优选图片</title>
    <link rel="stylesheet" href="css/style_picture.css">
    <link rel="stylesheet" href="css/theme.css">
    <script src="js/spotlight.bundle.js"></script>
</head>
<body>
<!--图片-->
<p class="spotlight-group">
    <b>优选图片</b>
    <a class="spotlight" href="gallery/brooklyn-bridge-1791001.jpg" data-description="图片来源">
        <img src="gallery/brooklyn-bridge-1791001-thumb.jpg" alt="优选图片">
    </a>
    <a class="spotlight" href="gallery/california-1751455.jpg" data-description="图片来源">
        <img src="gallery/california-1751455-thumb.jpg" alt="优选图片">
    </a>
    <a class="spotlight" href="gallery/canada-2340312.jpg" data-description="图片来源">
        <img src="gallery/canada-2340312-thumb.jpg" data-description="图片来源">
    </a>
</p>
<p class="spotlight-group">
    <a class="spotlight" href="gallery/brooklyn-bridge-1791001.jpg" data-description="图片来源">
        <img src="gallery/brooklyn-bridge-1791001-thumb.jpg" alt="优选图片">
    </a>
    <a class="spotlight" href="gallery/california-1751455.jpg" data-description="图片来源">
        <img src="gallery/california-1751455-thumb.jpg" alt="优选图片">
    </a>
    <a class="spotlight" href="gallery/canada-2340312.jpg" data-description="图片来源">
        <img src="gallery/canada-2340312-thumb.jpg" data-description="图片来源">
    </a>
</p>
<p class="spotlight-group">
    <a class="spotlight" href="gallery/brooklyn-bridge-1791001.jpg" data-description="图片来源">
        <img src="gallery/brooklyn-bridge-1791001-thumb.jpg" alt="优选图片">
    </a>
    <a class="spotlight" href="gallery/california-1751455.jpg" data-description="图片来源">
        <img src="gallery/california-1751455-thumb.jpg" alt="优选图片">
    </a>
    <a class="spotlight" href="gallery/canada-2340312.jpg" data-description="图片来源">
        <img src="gallery/canada-2340312-thumb.jpg" data-description="图片来源">
    </a>
</p>
<br>
<!--jquery-->
<script>
    const checkboxes = document.getElementsByTagName("input");
    window.showGallery = function(index){
        Spotlight.show(gallery, {
            index: index,
            theme: "dark",
            animation:  [
                checkboxes[0].checked && checkboxes[0].value,
                checkboxes[1].checked && checkboxes[1].value,
                checkboxes[2].checked && checkboxes[2].value,
                checkboxes[3].checked && checkboxes[3].value
            ]
        });
    };
</script>
<!--end-->
</body>
</html>
