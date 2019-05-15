<%--
  Created by IntelliJ IDEA.
  User: poyu
  Date: 2019/3/11/0011
  Time: 23:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="${pageContext.request.contextPath}/main/webapp/H1/css/h4_UserInf.css" rel="stylesheet" type="text/css">
</head>
<body>
<form action="CarRevise" method="post">
    <div class="div1">
        <div class="div2">
            <h1>违章缴费</h1>
            <div class="div3">
                <div class="t1">请输入违章编号：<input type="text" name="car_sign" value="" Maxlen=""/></div><br>
                <input type="submit" name="submit" value="确认"/>&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="reset" name="reset" value="重置"/>
                <input type="button" name="back" value="退出" onclick="window.location.href='../../../../../IndexInfo.jsp'"/>
            </div>
        </div>
    </div>
    </div>
</form>
</body>
</html>
