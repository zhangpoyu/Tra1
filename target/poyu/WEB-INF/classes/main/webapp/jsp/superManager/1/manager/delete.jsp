<%--
  Created by IntelliJ IDEA.
  User: poyu
  Date: 2019/3/17/0017
  Time: 14:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div style="text-align:center">
    <h1 style="font-family:楷体">请确认删除</h1>
    <div>
        <div>
            <form action="del" method="post">
                <input type="text" name="ticket" value="<%=request.getParameter("id")%>"/>
                <input type="submit" name="submit"/>
            </form>
        </div>
    </div>
</div>
</body>
</html>
