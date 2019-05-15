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
    <link href="${pageContext.request.contextPath}/H1/css/h5_Manager.css" type="text/css" rel="stylesheet">
    <script type="text/javascript" src="${pageContext.request.contextPath}/Js/j1.js"></script>
</head>
<body>
    <div class="skin_color">
        <div class="skin_set">
            <div class="skin">
                <font style="margin-left:800px;font-size:25px;font-family:楷体;color:blue;">欢迎登录</font>
                <input style="margin-left:1800px;margin-top:-22px;" type="button" class="back_bn" onclick="window.location.href='../../index.jsp'" value="注销">
                <input style="margin-left:1700px;margin-top:-24px; "type="button" class="back_bn" onclick="window.location.href='/Tra/jsp/manager/Manager.jsp'" value="清空">
            </div>
        </div>
    </div>
    <div class="div1">
        <div>
            <div>
                <a href="Unrule.jsp" style="margin-left:100px;" class="form">车辆违章信息</a>
            </div>
        </div>
    </div>


    <div class="div2">
      <div>
        <div class="content">
            <iframe class="iframeRight" src="${pageContext.request.contextPath}/jsp/manager/Content.jsp"> </iframe>
        </div>
      </div>
    </div>

</body>
</html>
