<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/3/28
  Time: 17:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>文章发表</title>
    <style type="text/css">
        #body {
            width: 70%;
            max-width: 100%;
            margin: 0 auto;
        }
    </style>
</head>
<body>
<!--文章发表表格-->
<div id="body">
    <c:forEach items="${itemPublicationWithBLOBsList}" var = "itemPublication">
        <table border="1" width="100%" height="50" align="center" id="tbl">
            <thead>
            <tr>
                <th>${itemPublication.itemname}</th>
            </tr>
            </thead>
            <tbody>
            <tr style="background-color:#778899">
                <td>【标题】${itemPublication.title}</td>
            </tr>
            <tr style="background-color:#B0C4DE">
                <td>【作者】${itemPublication.author}</td>
            </tr>
            <tr style="background-color:#778899">
                <td>【来源】${itemPublication.source}</td>
            </tr>
            <tr style="background-color:#B0C4DE">
                <td style="float: right;"><a href="">下载</a></td>
            </tr>
            </tbody>
        </table>

    </c:forEach>
    <div id="=body"></div>
</div>
</body>
</html>

