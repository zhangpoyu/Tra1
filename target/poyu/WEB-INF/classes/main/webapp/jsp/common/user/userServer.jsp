<%--
  Created by IntelliJ IDEA.
  User: poyu
  Date: 2019/3/6/0006
  Time: 21:08
  To change this template use File | Settings | File Templates.
--%>

<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<html>
<head>
    <title>用户服务中心</title>
    <link rel="icon" href="my.ico" type="image/x-icon" />
    <link rel="SHORTCUT ICON" href="my.ico" type="image/x-icon" />
    <link rel="bookmark" href="my.ico" type="image/x-icon" />
    <link href="${pageContext.request.contextPath}/H1/css/h2_register.css" rel="stylesheet" type="text/css">
    <style type="text/css">
        body{
            text-align: center;
        }
        h1:hover{
            text-shadow: cadetblue ;
        }
        .supermanager_login{
            height: 35px;
        }
        input{
            margin-left: 30px;
            margin-top: 3px;
            cursor: pointer;
            transition: all 1.5s;
        }
        input:hover{
            transform: scale(1.3);
        }
        .supermanager_login a{
            margin-left: 30px;
            margin-top: 3px;
        }
        .supermanager_log{
            width:15%;
            height: 100%;
            margin-top: 20px;
            margin-left: 30px;
            border: #87BCDD solid 3px;
            text-align: center;
        }
        .supermanager_log div{
            padding: 30px;
        }
        a{
            text-decoration: none;
            color: #666666;
            font-size: 20px;
            cursor: pointer;
            transition: all 2s;
        }
        a:hover{
            background: #BBCCDD;
            font-size: 25px;
        }
        .supermanager_panel{
            float: right;
            margin-top:-48%;
            width: 75%;
            height: 100%;
            border: #FF00FF solid 2px;
            background: url(${pageContext.request.contextPath}/H1/images/admin-login-bg.jpg) no-repeat center;
        }
    </style>
</head>
<body>
<h1>欢迎亲爱的用户</h1>
<div class="supermanager_login">
    <a style="float: left;" class="register_bn" href="">服务热线：88888888</a>
    <input style="float: left;" type="button" class="register_bn" onclick="window.location.href='../../../index.jsp'" value="注销">
    <a class="register_bn" style="float: right;" href="http://www.weather.com.cn/weather/101050101.shtml">天气预告</a>
    <a class="register_bn" style="float: right;" href="http://dcloud.qq.com/">日程设定</a>
</div>
<div class="supermanager_log">
    <div>
        <a href="http://wpa.b.qq.com/cgi/wpa.php?ln=1&key=XzgwMDE4MDEwNl80ODc3MzVfODAwMTgwMTA2XzJf" >邮箱联系我们</a>
    </div>
    <div>
        <a href="">微信联系我们</a>
    </div>
    <div>
        <a href="">今日看点</a>
    </div>
    <div>
        <a href="">车祸事件</a>
    </div>
    <div>
        <a href="">安全教育</a>
    </div>
    <div>
        <a href="">违章手册</a>
    </div>



</div>

<div class="supermanager_panel">

</div>

</body>
</html>
