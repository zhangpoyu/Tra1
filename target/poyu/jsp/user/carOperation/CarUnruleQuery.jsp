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
    <script type="text/javascript">
        function check()
        {
            var allforms = document.forms;
            var name = allforms[0].name.value;
            if('' == name)
            {
                alert('姓名不能为空！');
                return false;
            }
            var car_number = allforms[0].car_number.value;
            if('' == car_number)
            {
                alert('车牌不能为空！');
                return false;
            }
        }
    </script>
</head>
<body>
<h2 style="color: #FF00FF; text-align: center;">${notice}</h2>
<form action="CarUnruleQuery" method="post">
    <div class="div1">
        <div class="div2">
            <h1>车辆违章查询</h1>
            <div class="div3">
                <div class="t1">请输入姓名：<input type="text" name="name" value="" Maxlen=""/></div><br>
                <div class="t1">请输入车牌：<input type="text" name="car_number" value="" Maxlen=""/></div><br>
                <input type="submit" name="submit" value="确认" onclick = "return check()"/>&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="reset" name="reset" value="重置"/>
                <input type="button" name="back" value="退出" onclick="window.location.href='../../../IndexInfo.jsp'"/>
            </div>
        </div>
    </div>
    </div>
</form>
</body>
</html>
