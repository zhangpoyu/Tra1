<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: poyu
  Date: 2019/4/26/0026
  Time: 23:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style type="text/css">
        body {
            font-family: 楷体;
            color: #6A5ACD;
        }

        div {
            text-align: center;
        }

        table {
            margin: auto;
            text-align: center;
        }

        th {
            width: 200px;
        }

        input {
            text-align: center;
            background: #AFEEEE;
        }

        .btn {
            border-radius: 4px;

            font-family: 楷体;
        }
    </style>
    <script type="text/javascript">
        window.onload = function () {
            document.getElementById("btn_showlogin").onclick = shogMinLogin;
            document.getElementById("close_minilogin").onclick = closeLogin;
            document.getElementById("firstLine").onmousedown = moveLogin;
            /* 显示登录窗口 */
            function shogMinLogin() {
                var mini_login = document.getElementsByClassName("mini_login")[0];
                var cover = document.getElementsByClassName("cover")[0];
                mini_login.style.display = "block";
                cover.style.display = "block";

                mini_login.style.left = (document.body.scrollWidth - mini_login.scrollWidth) / 2 + "px";
                mini_login.style.top = (document.body.scrollHeight - mini_login.scrollHeight) / 2 + "px";
            }

            /* 关闭登录窗口 */
            function closeLogin() {
                var mini_login = document.getElementsByClassName("mini_login")[0];
                var cover = document.getElementsByClassName("cover")[0];
                mini_login.style.display = "none";
                cover.style.display = "none";
            }

            /* 移动登录窗口 */
            function moveLogin(event) {
                var moveable = true;

                //获取事件源
                event = event ? event : window.event;
                var clientX = event.clientX;
                var clientY = event.clientY;

                var mini_login = document.getElementById("mini_login");
                console.log(mini_login);
                var top = parseInt(mini_login.style.top);
                var left = parseInt(mini_login.style.left);//鼠标拖动
                document.onmousemove = function (event) {
                    if (moveable) {
                        event = event ? event : window.event;
                        var y = top + event.clientY - clientY;
                        var x = left + event.clientX - clientX;
                        if (x > 0 && y > 0) {
                            mini_login.style.top = y + "px";
                            mini_login.style.left = x + "px";
                        }
                    }
                }
                //鼠标弹起
                document.onmouseup = function () {
                    moveable = false;
                }
            }
        };

        function pay() {
            window.open("pay/pay.jsp", "newwindow", "height=600, width=600, toolbar=no, menubar=no, scrollbars=no, resizable=no, location=no, status=no")
        }

        function check() {
            var allforms = document.forms;
            var username = allforms[0].username.value;
            if ('' == username) {
                alert('账户不能为空！');
                return false;
            }
            var password = allforms[0].password.value;
            if ('' == password) {
                alert('密码不能为空！');
                return false;
            }
        }
    </script>
    <style>
        /* 弹出 样式 */
        .mini_login {
            display: none;
            position: absolute;
            z-index: 2;
            background: white;
        }

        .mini_login .item {
            width: 320px;
            margin: 0 auto;
            height: 48px;
            line-height: 48px;
            padding: 0 20px;
        }

        /* 登录窗第一行*/
        .mini_login .firstLine {
            color: #666;
            background: #f7f7f7;
            font-size: 18px;
            font-weight: bold;
            cursor: move;
        }

        .mini_login .item .login_close {
            display: inline-block;
            float: right;
            cursor: pointer;
        }

        .mini_login .item label {
            font-size: 14px;
            margin-right: 15px;
        }

        .mini_login .item input {
            display: inline-block;
            height: 60%;
            width: 70%;
        }

        img {
            width: 20px;
            height: 15px;
            position: absolute;
            right: 30px;
            margin: 15px;
        }

        /* 登录按钮 */
        .mini_login .item_btn {
            display: block;
            margin: 10px 30% 0;
            height: 30px;
            line-height: 30px;
            width: 60%;
            color: white;
            font-size: 16px;
            font-weight: bold;
            text-align: center;
        }

        /* 遮罩层样式 */
        .cover {
            display: none;
            width: 100%;
            height: 100%;
            position: absolute;
            top: 0;
            left: 0;
            z-index: 1;
            background-color: #000;
            opacity: 0.3;
        }

        a:hover {
            color: #FF00FF;
        }
    </style>
</head>
<body>
<div class="main">
    <h1>违章信息表</h1>
    <table border="5" bordercolor="#99ccff">
        <tr>
            <th>违章编号</th>
            <th>违章时间</th>
            <th>违章原因</th>
            <th>违章缴费</th>
        </tr>
        <tbody>
        <c:forEach varStatus="i" var="list" items="${lists}">
            <tr>
                <td><input name="unrule_record" value="${list.unrule_record}" readonly="true"/></td>
                <td><input name="time" value="${list.time}" readonly="true"/></td>
                <td><input name="unrule_record" value="${list.unrule_reason}" readonly="true"/></td>
                <td style="background:#4232;"><a style="font-family:italy; text-decoration: none;" href="javascript:void(0)" class="btn_login"
                       id="btn_showlogin">现在缴费</a></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
<!-- 弹出登录小窗口 -->
<div class="mini_login" id="mini_login">
    <!-- 表单 -->
    <form action="pay" method="get">
        <div class="item firstLine" id="firstLine">
            <span class="login_title">我要登录</span>
            <span class="login_close" id="close_minilogin">X</span>
        </div>
        <div class="item">
            <label>用户</label>
            <input type="text" name="username"/>
        </div>
        <div class="item">
            <label>密码</label>
            <img id="demo_img" onclick="hideShowPsw()" src="visible.png">
            <input type="password" id="demo_input" name="password"/>
            <script type="text/javascript">
                // 这里使用最原始的js语法实现，可对应换成jquery语法进行逻辑控制
                var demoImg = document.getElementById("demo_img");
                var demoInput = document.getElementById("demo_input");

                //隐藏text block，显示password block
                function hideShowPsw() {
                    if (demoInput.type == "password") {
                        var con = confirm("确定显示密码？");
                        if(con==true)
                        demoInput.type = "text";
                        demo_img.src = "invisible.png";
                    }
                    else if(demoInput.type == "text") {
                        var con = confirm("确定隐藏密码？");
                        if(con==true)
                        demoInput.type = "password";
                        demo_img.src = "visible.png";
                    }
                }
            </script>
        </div>
        <div class="item_btn">
            <input type="submit" class="btn" value="提交" onclick="return check()"/>
            <input type="reset" class="btn" value="重置"/>
        </div>
        <div class="item">
            <h3 style="color:#E9967A;">${notice}</h3>
        </div>
    </form>
</div>


<!-- 遮罩层 -->
<div class="cover"></div>

</body>
</html>
