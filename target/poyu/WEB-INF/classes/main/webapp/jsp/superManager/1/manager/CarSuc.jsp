<%--
  Created by IntelliJ IDEA.
  User: poyu
  Date: 2019/3/12/0012
  Time: 22:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/main/webapp/H1/css/h3_CarInf.css" type="text/css"/>
</head>
<body>
<input type="button" value="违章查询" style=" border-radius:4px;background:#BBCC44;font-family:楷体;"  onclick="window.location.href='${pageContext.request.contextPath}/jsp/user/log.jsp'" />
<div style="float:left">
     <input type="button" name="back" value="退出" style="float:left;border-radius:4px;background:#BBCC44;font-family:楷体;" onclick="window.location.href='../../../../index.jsp'"/>
</div>
<center>
    <h1 class="h" align="center">注册完毕</h1>
    <div class="" style="text-align:center;width:70%;height:70%;border:1px red;">
        <div>
            <h3 class="h" style="">注册信息如下：</h3>
        </div>
        <center>
            <div class="Suc_div1"  style="text-align:center;width:40%;height:50%;border:1px red;">
            <div style="float:right">
                    <table style="" align="center">
                        <tr>
                            <th>姓名</th>
                            <th>电话</th>
                            <th>车牌号</th>
                            <th>牌子</th>
                            <th>类型</th>
                        </tr>
                        <tr>
                            <td>${name}</td>
                            <td>${number}</td>
                            <td>${car_num}</td>
                            <td>${car_sign}</td>
                            <td>${car_style}</td>
                        </tr>
                    </table>

            </div>
        </div>
        </center>
    </div>
</center>

</body>
</html>
