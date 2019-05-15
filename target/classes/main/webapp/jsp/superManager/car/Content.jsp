<%--
  Created by IntelliJ IDEA.
  User: poyu
  Date: 2019/3/15/0015
  Time: 23:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style type="text/css">
        .form {
            margin-top: 10px;
            background: mintcream;
            border-radius: 8px;
        }

        h1 {
            text-shadow: cyan;
            background: cornsilk;
            font-family: 楷体;
            text-align: center;
        }
    </style>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/main/webapp/H1/css/h6_Content.css"/>
</head>
<body>
<form action="Car" method="post" class="">
    <input class="form" style="" name="button" type="submit" value="查看">
    <span class="font-warring"><font color="#DA70D6">${message}</font></span>
    <h1>车辆信息中心</h1>
    <div>
        <div>
             <div></div>
        </div>
    </div>
</form>
</body>
</html>
