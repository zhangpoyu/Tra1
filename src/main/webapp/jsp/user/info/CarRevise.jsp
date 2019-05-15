<%--
  Created by IntelliJ IDEA.
  User: poyu
  Date: 2019/3/11/0011
  Time: 23:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="${pageContext.request.contextPath}/H1/css/h4_UserInf.css" rel="stylesheet" type="text/css">
    <script>
        function check() {
            var allform = document.forms;
            var car_number = allform[0].car_number.value;
            if(car_number == '')
            {
                alert("车牌号不能为空！");
                return false;
            }
        }
    </script>
</head>
<body>
<form action="CarRevise" method="post">
    <div class="div1">
        <div class="div2">
            <h1>车辆信息修改</h1>
            <div class="div3">
                <div class="formControls col-xs-8 col-xs-offset-3">
                    <span class="font-warring"><font color="green">${notice}</font></span>
                </div>
                <div class="t1">请输入车牌号：<input type="text" name="car_number" value="" Maxlen=""/></div><br>
                <input type="submit" name="submit" value="确认" onclick="return check()"/>&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="reset" name="reset" value="重置"/>
                <input type="button" name="back" value="退出" onclick="window.location.href='../../../IndexInfo.jsp'"/>
            </div>
        </div>
    </div>
    </div>
</form>
</body>
</html>
