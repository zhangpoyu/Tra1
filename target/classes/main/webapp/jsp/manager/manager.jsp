<%--
  Created by IntelliJ IDEA.
  User: poyu
  Date: 2019/4/22/0022
  Time: 14:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>全国车辆违章中心</title>
    <link rel="icon" href="my.ico" type="image/x-icon" />
    <link rel="SHORTCUT ICON" href="my.ico" type="image/x-icon" />
    <link rel="bookmark" href="my.ico" type="image/x-icon" />
    <link href="${pageContext.request.contextPath}/H1/css/manager_login.css" rel="stylesheet" type="text/css">
    <style type="text/css">
        a:hover{
            font-size:21px;
        }
        a:hover{
            text-decoration: underline;
        }
        a:hover{
            color: #BBCCDD;
        }

    </style>
    <script type = "text/javascript">
        function cleaning(){
            confirm("确定刷新？ ");
            window.location.reload();
        }
    </script>
</head>
<body>
<div class="div1">
    <div class="div_success">
        <h1>欢迎用户:${userName}</h1>
        <div class=""></div>
        <input style="margin-left:1800px; margin-top: -20px;" type="button" class="register_bn"
               onclick="window.location.href='${pageContext.request.contextPath}/index.jsp'" value="注销">
        <input style="margin-left:1700px;margin-top:-24px; " type="button" class="register_bn"
               onclick="return cleaning()" value="清空">
    </div>
    <div class="register">
        <div class="a">
            <a target="transfer" href="jsp/manager/carInfo/CarInfoQuery.jsp">查看车辆信息</a><br/>
        </div>
        <div class="a">
            <a target="transfer" href="jsp/manager/picture/Upload.jsp">添加违章信息</a><br/>
        </div>
        <div class="a">
            <a target="transfer" href="jsp/manager/carInfo/UnruleInfoQuery.jsp">查看违章信息</a><br/>
        </div>
        <div class="a">
            <a target="transfer" href="jsp/manager/email/SenEmail.jsp">发送违章信息</a><br/>
        </div>
        <div class="a">
            <a target="transfer" href="jsp/manager/CarRegister.jsp">车辆户籍变更</a><br/>
        </div>
        <div class="a">
            <a target="transfer" href="jsp/manager/CarRegister.jsp">销户</a><br/>
        </div>
    </div>
    <div id="iframe_box" class="Hui-article">
        <iframe class="iframe" name="transfer"
                src="${pageContext.request.contextPath}/IndexInfo.jsp"></iframe>
    </div>
</div>

</body>
</html>
