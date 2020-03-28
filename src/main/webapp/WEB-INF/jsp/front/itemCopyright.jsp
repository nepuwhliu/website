<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/3/28
  Time: 17:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>软件著作权</title>
    <style type="text/css">
        #body {
            width: 70%;
            max-width: 100%;
            margin: 0 auto;
        }
    </style>
</head>
<body>
<div id="body">
    <c:forEach items="${itemPublicationWithBLOBsList}" var="itemPublication">
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
            <tr  style="background-color:#B0C4DE">
                <td>【作者】${itemPublication.author}</td>
            </tr>
            <tr style="background-color:#778899">
                <td>【时间】${itemPublication.submittime}</td>
            </tr>
            </tbody>
        </table>
    </c:forEach>

    <div id="=body"></div>
</div>
</body>
</html>

