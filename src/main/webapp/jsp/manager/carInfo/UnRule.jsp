<%--
  Created by IntelliJ IDEA.
  User: poyu
  Date: 2019/3/14/0014
  Time: 7:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <link href="${pageContext.request.contextPath}/H1/css/h3_CarInf.css" rel="stylesheet" type="text/css">
    <script language="javascript" src="${pageContext.request.contextPath}/Js/j1.js" type="text/javascript"/>
    <script type="text/javascript"></script>
    <style type="text/css">
        input {
            text-align: center;
        }

        /* 弹出 样式 */
        .btn_login {
            border-radius: 4px;
            background: #BBCC44;
            font-family: 楷体;
        }

        .mini_login {
            display: none;
            position: absolute;
            z-index: 2;
            background: white;
        }

        .mini_login .item {
            width: 320px;
            margin: 0 auto;
            height: 120px;
            line-height: 48px;
            padding: 0 20px;
        }

        .mini_login .item_btn {
            margin-top: 32%;
            margin-left: 35%;
            height: 15px;
        }

        /* 登录窗第一行*/
        .mini_login .firstLine {
            margin-top: 0px;
            height: 40px;
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
                mini_login.style.top = (document.body.scrollHeight - mini_login.scrollHeight) / 3 + "px";
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
    </script>
</head>
<body>

<div class="div" style="margin-left:-50px">
    <div class="div1">
        <table class="table" align="center"><h1 style="font-family:楷体;text-align:center;color:#BBCCDD;text-shadow:blue">
            查询完毕</h1>
            <tr class="text-c">
                <th>序号</th>
                <th>姓名</th>
                <th>电话</th>
                <th>车牌</th>
                <th>罚款单号</th>
                <th>违章原因</th>
                <th>备注</th>
                <th>管理</th>
            </tr>
            <tbody>
            <c:forEach var="unruleCar" items="${unRuleCars}" varStatus="i">
                <form action="UnruleDeal" method="post">
                    <tr>
                        <td class="text">
                            <input type="text" value="${unruleCar.id}" name="id" class="input-text"/>
                        </td>
                        <td class="text">
                            <input type="text" value="${unruleCar.name}" name="name" class="input-text"/>
                        </td>
                        <td class="text">
                            <input type="text" value="${unruleCar.number}" name="number" class="input-text"/>
                        </td>
                        <td class="text">
                            <input type="text" value="${unruleCar.car_number}" name="car_number" class="input-text"/>
                        </td>
                        <td class="text">
                            <input type="text" value="${unruleCar.unrule_record}" name="unrule_record"
                                   class="input-text"/>
                        </td>
                        <td class="text">
                            <input type="text" value="${unruleCar.unrule_reason}" name="unrule_reason"
                                   class="input-text"/>
                        </td>
                        <td class="text">
                            <input type="text" value="" name="ticket" class="input-text"/>
                        </td>
                        <td>
                            <input type="submit" class="btn" name="btn" value="修改"
                                   onclick="return confirm('您是否要修改姓名为${car.name}的信息？')"/>
                            <input type="button" name="btn" value="添加"
                                   href="javascript:void(0)" class="btn_login" id="btn_showlogin"
                                   onclick="return confirm('您是否要修改姓名为${car.name}的信息？')"/>
                            <input type="submit" class="btn" name="btn" value="删除"
                                   onclick="return confirm('您是否要删除姓名为${car.name}的信息？')"/>
                        </td>
                    </tr>
                </form>
            </c:forEach>
            </tbody>
        </table>
        </form>
    </div>
</div>

<!-- 弹出信息录入小窗口 -->
<div class="mini_login" id="mini_login" name="input">
    <!-- 表单 -->
    <form action="UnruleInput" method="post">
        <div class="item firstLine" id="firstLine">
            <span class="login_title">违章信息录入</span>
            <span class="login_close" id="close_minilogin">X</span>
        </div>
        <div class="item">
            <div><label>姓名：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label><input type="text" name="name" id="name"/></div>
            <div><label>电话：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label><input type="text" name="number" id="number"/></div>
            <div><label>车牌号：&nbsp;&nbsp;&nbsp;&nbsp;</label><input type="text" name="car_number" id="car_number"/></div>
            <div><label>违章编号：</label><input type="text" name="unrule_record" id="unrule_record"/></div>
            <div><label>违章原因：</label><input type="text" name="unrule_reason" id="unrule_reason"/></div>
        </div>
        <div class="item_btn">
            <input type="submit" class="btn" name="btn" value="添加" onclick="return check()"/>
            <script language="javascript">
                function check() {
                    var name=document.getElementById("name").value;
                    if ('' == name) {
                        alert('姓名不能为空！');
                        return false;
                    }
                   var number = document.getElementById("number").value;
                    if('' == number)
                    {
                        alert("号码不能为空!");
                        return false;
                    }
                    var car_number = document.getElementById("car_number").value;
                    if('' == car_number)
                    {
                        alert("车牌号不能为空！");
                        return false;
                    }
                    var unrule_record = document.getElementById("unrule_record").value;
                    if('' == unrule_record)
                    {
                        alert("违章记录不能为空！");
                        return false;
                    }
                    var unrule_reason = document.getElementById("unrule_reason").value;
                    if(''  == unrule_reason)
                    {
                        alert("违章原因不能为空！")
                        return  false;
                    }
                }
            </script>
            <input type="reset" class="btn" value="重置"/>
        </div>
    </form>
</div>


<!-- 遮罩层 -->
<div class="cover"></div>

</body>
</html>