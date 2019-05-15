<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: poyu
  Date: 2019/4/26/0026
  Time: 23:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style type="text/css">
        body{
            font-family:楷体;
            color:#6A5ACD;
        }
        div{
            text-align: center;
        }
        table{
            margin: auto;
            text-align:center;
        }
        th{
            width:200px;
        }
    </style>
</head>
<body>
<div>
    <h1>违章信息表</h1>
    <table border="5" bordercolor="#99ccff">
        <tr>
            <th>违章编号</th>
            <th>违章时间</th>
            <th>违章原因</th>
        </tr>
        <c:forEach varStatus="" var="list" items="${lists}">
            <tr>
                <td>${list.unrule_record}</td>
                <td>${list.time}</td>
                <td>${list.unrule_reason}</td>
            </tr>
        </c:forEach>

    </table>
</div>
</body>
</html>
