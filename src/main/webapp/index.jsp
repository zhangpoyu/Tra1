<%--
  Created by IntelliJ IDEA.
  User: poyu
  Date: 2019/3/3/0003
  Time: 15:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>全国车辆违章中心</title>
    <link rel="icon" href="my.ico" type="image/x-icon"/>
    <link rel="SHORTCUT ICON" href="my.ico" type="image/x-icon"/>
    <link rel="bookmark" href="my.ico" type="image/x-icon"/>
    <link href="${pageContext.request.contextPath}/H1/css/index.css" rel="stylesheet" type="text/css"/>
    <script type="text/javascript">
        var myselect = document.getElementById("text");
        var index = myselecte.selectedIndex;
        myselect.option[index].text;
        function out(){
            alert(myselect.option[index].text);
        }
    </script>
</head>
<body>
<h1>欢迎来到全国车辆违章管理系统</h1>
<form action="login" method="post" class="form_login">
    <div class="login_select">
        <select name="select" class="select" value="${selected}">
            <option name="option" selected="selected">用户</option>
            <option name="option">管理员</option>
            <option name="option">超级管理员</option>
        </select>
    </div>
    <div class="div_login">
        <div class="row">
            <input type="text" placeholder="账户" name="userName" class="input-text" value="${name}" MaxLenth="12"/>
        </div>

        <div class="row1S">
            <input type="password" placeholder="密码" name="userPwd" class="input-text"/>
        </div>

        <div class="row cl">
            <div class="formControls col-xs-8 col-xs-offset-3">
                <input type="submit" value="&nbsp;登&nbsp;&nbsp;&nbsp;&nbsp;录&nbsp;" class="btn"/>
                <input type="reset" class="btn" value="&nbsp;取&nbsp;&nbsp;&nbsp;&nbsp;消&nbsp;">
                <input type="button" class="register" class="btn"
                       onclick="window.location.href = 'jsp/manager/register/register.jsp'"
                       value="&nbsp;注&nbsp;&nbsp;&nbsp;&nbsp;册&nbsp;"/>
            </div>
            <div class="formControls col-xs-8 col-xs-offset-3">
                <span class="font-warring"><font color="green">${notice}</font></span>
            </div>
        </div>
    </div>

    <footer style="font-size:20px;text-align:center;margin-top:100px;color:#fBCB;">Copyright 违查无科技股份有限公司</footer>

</form>
</body>
</html>
