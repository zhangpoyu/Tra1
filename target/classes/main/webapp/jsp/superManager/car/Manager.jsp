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
    <link href="../H1/css/h5_superManager.css" type="text/css" rel="stylesheet">
    <style type="text/css">
        .skin_color {
            height: 35px;
            background: #CEDBA2;
            margin-top: -5px;
        }

        .form {
            margin-top: 0px;
        }
        .link_btn{
            margin-top: 30px;
        }
        a:hover{
            text-decoration: blink #996699;
            font-size: 19px;
            color: #098323;
        }
        .div1 {
            border: 5px darkcyan solid;
            float: left;
            margin-top: 0px;
            height: 96%;
            width: 12%;
        }

        .content {
            float: right;
            margin-top: 0px;
            float: bottom;
            height: 97%;
            width: 87%;
            background: cyan;
        }

        .back_bn {
            margin-top: 4px;
            background: palegoldenrod;
            border-radius: 8px;
        }

        a {
            text-decoration: none;
        }

        .iframeRight {
            float: right;
            float: bottom;
            height: 100%;
            width: 100%;
            background: slategray;
        }
    </style>
    <script type="text/javascript" src="${pageContext.request.contextPath}/main/webapp/Js/j1.js"></script>
</head>
<body>
    <div class="skin_color">
        <div class="skin_set">
            <div class="skin">
                <font style="margin-left:800px;font-size:25px;font-family:楷体;color:blue;">欢迎登录</font>
                <input style="margin-left:1800px;margin-top:-22px;" type="button" class="back_bn" onclick="window.location.href='${pageContext.request.contextPath}/index.jsp'" value="注销">
                <input style="margin-left:1700px;margin-top:-24px; " type="button" class="back_bn" onclick="window.location.href='Manager.jsp'" value="清空">
            </div>
        </div>
    </div>
    <div class="div1">
        <div>
            <div class="link_btn">
                <a href="${pageContext.request.contextPath}/jsp/manager/supManager.jsp" style="margin-left:60px;" class="form">返回首页</a>
            </div>
            <div class="link_btn">
                <a href="${pageContext.request.contextPath}/jsp/superManager/car/Voilation.jsp" style="margin-left:60px;" class="form">车辆违章信息</a>
            </div>
        </div>
    </div>


    <div class="div2">
      <div>
        <div class="content">
            <iframe class="iframeRight" src="${pageContext.request.contextPath}/jsp/manager/carInfo/CarInfoQuery.jsp"> </iframe>
        </div>
      </div>
    </div>

</body>
</html>
