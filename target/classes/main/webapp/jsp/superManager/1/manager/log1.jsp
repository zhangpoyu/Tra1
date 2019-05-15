<%--
  Created by IntelliJ IDEA.
  User: poyu
  Date: 2019/3/6/0006
  Time: 21:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<html>
<head>
    <title>Title</title>
    <link href="${pageContext.request.contextPath}/main/webapp/H1/css/user_login.css" rel="stylesheet" type="text/css">
</head>
<body>
<div class="div1">
    <div class="div_success">
        <h1>欢迎用户:${userName}</h1>
        <input style="margin-left:1800px; margin-top: -20px;" type="button" class="register_bn"
               onclick="window.location.href='../../../../index.jsp'" value="注销">
    </div>
    <div class="register">
        <div class="a">
            <a target="transfer" href="jsp/manager/CarRegister.jsp">车辆户籍登记</a><br/>
        </div>
        <div class="a">
            <a target="transfer" href="jsp/manager/CarRegister.jsp">车辆户籍登记</a><br/>
        </div>
        <div class="a">
            <a target="transfer" href="jsp/manager/CarRegister.jsp">车辆户籍登记</a><br/>
        </div>
        <div class="a">
            <a target="transfer" href="jsp/manager/CarRegister.jsp">车辆户籍登记</a><br/>
        </div>
        <div class="a">
            <a target="transfer" href="jsp/manager/CarRegister.jsp">车辆户籍登记</a><br/>
        </div>
        <div class="a">
            <a target="transfer" href="jsp/manager/CarRegister.jsp">车辆户籍登记</a><br/>
        </div>
    </div>
    <div id="iframe_box" class="Hui-article">
        <iframe class="iframe" name="transfer"
                src="${pageContext.request.contextPath}/jsp/manager/Manager.jsp"></iframe>
    </div>
</div>

</body>
</html>
