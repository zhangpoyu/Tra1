<%--
  Created by IntelliJ IDEA.
  User: poyu
  Date: 2019/3/6/0006
  Time: 21:08
  To change this template use File | Settings | File Templates.
--%>

<%@ page language="java" import="java.util.*"  contentType="text/html;charset=UTF-8"%>
<html>
<head>
    <title>Title</title>
    <link href="${pageContext.request.contextPath}/H1/css/h2_register.css" rel="stylesheet" type="text/css">
    <script language="JavaScript">
        window.reload();
    </script>

</head>
<body>
<form action="success">
<h1>恭喜:<%=request.getParameter("userName")%>注册成功!<image class="img" src="${pageContext.request.contextPath}/H1/images/download.jpg"  height="36" width="36"  align="top"></image></h1>
<div class="register">
    <input style="margin-left: 1800px;" type="button" class="register_bn" onclick="window.location.href='register.jsp'" value="返回">
    <input type="button" class="register_bn" onclick="window.location.href='../../../index.jsp'" value="登录？">
</div>
  <div class="div_success">

  </div>
</form>
</body>
</html>
