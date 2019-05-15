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
</head>
<body>
<form action="CarRevised" method="get">
    <div class="div1">
        <div class="div2">
            <h1>车辆信息修改</h1>
            <div class="div3">

                <div class="t1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;姓名：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
                        type="text" name="name" value="${name}" Maxlen=""/></div>
                <br>
                <div class="t1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;电话：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
                        type="text" name="number" value="${number}" Maxlen=""/></div>
                <br>
                <div class="t2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;身份证：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
                        type="text" name="id_card" value="${id_card}" Maxlen=""/></div>
                <br>
                <div class="t1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;邮箱：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
                        type="text" name="email" value="${email}" Maxlen=""/></div>
                <br>
                <div class="t2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;车牌号：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
                        type="text" readonly="readonly" name="car_number" value="${car_number}" Maxlen=""/></div>
                <br>
                <div class="t1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;车牌：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
                        type="text" name="car_sign" value="${car_sign}" Maxlen=""/></div>
                <br>
                <div class="t4">&nbsp;&nbsp;车辆类型：&nbsp;&nbsp;<input type="text" name="car_style" value="${car_style}"
                                                                    Maxlen=""/>
                </div>
                <br>
                <input type="submit" name="submit" value="确认" onclick="return confirm('确定修改${name}的有关信息？')"/>&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="reset" name="reset" value="重置"/>
                <input type="button" name="back" value="退出"
                       onclick="window.location.href='../../../IndexInfo.jsp'"/>

            </div>
        </div>
    </div>
    </div>

</form>
</body>
</html>
