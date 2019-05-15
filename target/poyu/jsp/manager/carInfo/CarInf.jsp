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
    <style type="text/css">
        input{
            text-align:center;
        }
    </style>
    <script language="javascript" type="text/javascript"></script>
</head>
<body>

<div class="div" style="margin-left:30px">
    <div class="div1">
        <table class="table" align="left"><h1 style="font-family:楷体;text-align:center;color:#BBCCDD;text-shadow:blue">
            查询完毕</h1>
            <tr class="text-c">
                <th>序号</th>
                <th>姓名</th>
                <th>电话</th>
                <th>身份证号</th>
                <th>邮箱</th>
                <th>车牌</th>
                <th>标志</th>
                <th>类型</th>
                <th>管理</th>
            </tr>
            <tbody>
            <c:forEach var="car" items="${cars}" varStatus="i">
                    <form action="Car" method="post">
                    <tr>
                        <td class="text">
                            <input type="text" value="${car.id}" name="id" class="input-text"/>
                        </td>
                        <td class="text">
                            <input type="text" value="${car.name}" name="name" id="name" class="input-text"/>
                        </td>
                        <td class="text">
                            <input type="text" value="${car.number}" name="number" class="input-text"/>
                        </td>
                        <td class="text">
                            <input type="text" value="${car.id_card}" name="id_card" id="id_card" class="input-text"/>
                        </td>
                        <td class="text">
                            <input type="text" value="${car.email}" name="email" id="email" class="input-text"/>
                        </td>
                        <td class="text">
                            <input type="text" value="${car.car_number}" name="car_number" class="input-text"/>
                        </td>
                        <td class="text">
                            <input type="text" value="${car.car_sign}" name="car_sign" class="input-text"/>
                        </td>
                        <td class="text">
                            <input type="text" value="${car.car_style}" name="car_style" class="input-text"/>
                        </td>
                        <td>
                            <input type="submit" class="btn" value="修改" name="button"
                                   onclick="return confirm('您是否要修改姓名为${car.name}的信息？')"/>
                            <input type="submit" class="btn" value="删除" name="button"
                                   onclick="return confirm('您是否要删除姓名为${car.name}的信息？')"/>
                        </td>
                    </tr>
                </form>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>
</body>
</html>