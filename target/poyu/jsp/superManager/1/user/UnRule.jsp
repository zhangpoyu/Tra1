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
    <link href="${pageContext.request.contextPath}/main/webapp/H1/css/h3_CarInf.css" rel="stylesheet" type="text/css">
    <script language="javascript" src="${pageContext.request.contextPath}/main/webapp/Js/j1.js" type="text/javascript"/>
    <script type="text/javascript">
        function del()
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

<div class="div" style="margin-left:-50px">
    <div class="div1">
        <table class="table" align="center"><h1 style="font-family:楷体;text-align:center;color:#BBCCDD;text-shadow:blue">查询完毕</h1>
            <tr class="text-c">
                <th>序号</th>
                <th>姓名</th>
                <th>电话</th>
                <th>车牌</th>
                <th>违章记录</th>
                <th>处理</th>
                <th>罚款单号</th>
                <th>管理</th>
            </tr>
            <tbody>
            <c:forEach var="unruleCar" items="${unRuleCars}" varStatus="i">
                <form action="UnruleDeal" method="post">
                <tr>
                    <td class="text">
                        <input type="text" value="${unruleCar.id}" name="id" class="input-text" />
                    </td>
                    <td class="text">
                        <input type="text" value="${unruleCar.name}" name="name" class="input-text" />
                    </td>
                    <td class="text">
                        <input type="text" value="${unruleCar.number}" name="number" class="input-text" />
                    </td>
                    <td class="text">
                        <input type="text" value="${unruleCar.car_number}" name="car_number" class="input-text" />
                    </td>
                    <td class="text">
                        <input type="text" value="${unruleCar.unrule_record}" name="unrule_record" class="input-text" />
                    </td>
                    <td class="text">
                        <input type="text" value="${unruleCar.record_deal}" name="record_deal" class="input-text" />
                    </td>
                    <td class="text">
                        <input type="text" value="" name="ticket" class="input-text"/>
                    <td>
                        <input type="button" class="btn" value="添加" onclick= "window.location.href='add.jsp'" />
                        <input type="button" class="btn" value="修改" onclick="window.location.href='show_img.jsp'"/>
                        <input type="button" class="btn" value="" onclick = "window.location.href='test.jsp'"/>
                        <input type="button" class="btn" value="删除" onclick="window.location.href='delete.jsp'"  />
                    </td>
                </td>
                </tr>
                </form>
            </c:forEach>
            </tbody>
        </table>
        </form>
    </div>
</div>
</body>
</html>