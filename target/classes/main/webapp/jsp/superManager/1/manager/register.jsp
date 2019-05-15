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
    <link href="${pageContext.request.contextPath}/main/webapp/H1/css/index.css" rel="stylesheet" type="text/css"/>
    <script type="text/javascript">
        function check()
        {
            var allforms = document.forms;
            var userName = allforms[0].userName.value;
            if('' == userName)
            {
                alert('账户不能为空！');
                return false;
            }
            var userPwd = allforms[0].userPwd.value;
            if('' == userPwd)
            {
                alert('密码不能为空！');
                return false;
            }
            var ReuserPwd= allforms[0].ReuserPwd.value;
            if(userPwd != ReuserPwd)
            {
                alert('两次输入密码不一样！');
                return false;
            }
        }
    </script>

</head>
<body>
<h1>欢迎来到银丰市车辆违章管理系统</h1>
<form action="register" method="post" class="form_login">
    <div class="login_select">
        <select name="select" class="select">
            <option name="option">管理员</option>
            <option name="option">用户</option>
            <option name="option">超级管理员</option>
        </select>
    </div>
    <div class="div_login">
        <div class="row">
            <input type="text" placeholder="账户" id="userName" name="userName" class="input-text" MaxLenth="12"/>
        </div>

        <div class="row1S">
            <input type="password" placeholder="密码" id="userPwd"  name="userPwd" class="input-text"/>
        </div>

        <div class="row1S" style="margin-top:25px">
            <input type="password" placeholder="确认密码" id="ReuserPwd" name="ReuserPwd" class="input-text"/>
        </div>

        <div class="row cl">
            <div class="formControls col-xs-8 col-xs-offset-3">
                <input type="submit" class="register" class="btn" onclick = "return check()" value="注册"/>
                <input type="reset" value="取消" class="reset" onclick=""/></a>
                <input type="button" value="退出" class="exit" onclick="window.location.href='../../../../index.jsp'"/></a>
            </div>
        </div>
        <div class="formControls col-xs-8 col-xs-offset-3">
            <span class="font-warring"><font color="green">${notice}</font></span>
        </div>
    </div>

        <footer style="font-size:20px;text-align:center;margin-top:100px;color:#fBCB;">Copyright 违查无科技股份有限公司</footer>

</form>


</body>
</html>
