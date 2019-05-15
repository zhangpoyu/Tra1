<%--
  Created by IntelliJ IDEA.
  User: poyu
  Date: 2019/3/14/0014
  Time: 7:34
  To change this template use File | Settings | File Templates.
--%>
<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<html>
<head>
    <title>Title</title>
    <link href="${pageContext.request.contextPath}/H1/css/h7_Unrule.css" type="text/css" rel="stylesheet">
    <script type="text/javascript" src="${pageContext.request.contextPath}/main/webapp/Js/j1.js"></script>
</head>
<body>
<div class="skin_color">
    <div class="skin_set">
        <div class="skin">
            <font style="margin-left:800px;font-size:25px;font-family:楷体;color:blue;">欢迎登录</font>
            <input style="margin-left:1800px;margin-top:-22px;" type="button" class="back_bn" onclick="window.location.href='../../../../index.jsp'" value="注销">
            <input style="margin-left:1700px;margin-top:-24px; "type="button" class="back_bn" onclick="window.location.href='/Tra/jsp/manager/Unrule.jsp'" value="清空">
            <input style="margin-left:1600px;margin-top:-24px; "type="button" class="back_bn" onclick="window.location.href='/Tra/jsp/user/delete.jsp'" value="违章处理">

        </div>
    </div>
</div>
<div class="div1">
    <div>
        <div>
            <a href="javascript:void(0)" style="margin-left:100px;" class="form">本期公告</a>
        </div>
    </div>
</div>


<div class="div2">
    <div>
        <div class="content">
            <iframe class="iframeRight" src="${pageContext.request.contextPath}/jsp/user/Content.jsp"> </iframe>
        </div>
    </div>
</div>

</body>
</html>
