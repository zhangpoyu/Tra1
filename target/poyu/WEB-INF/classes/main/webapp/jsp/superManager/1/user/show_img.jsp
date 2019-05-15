<%--
  Created by IntelliJ IDEA.
  User: poyu
  Date: 2019/3/23/0023
  Time: 23:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style type="text/css">
        .black_overlay{
            display: none;
            position: absolute;
            top: 0%;left: 0%;
            width: 100%;
            height: 100%;
            background-color: black;
            z-index: 1001;
            opacity: .70;
        }
        .white_content{
            display: none;
            position: absolute;
            top:-1%;
            width: 80%;
            height: 80%;
            padding: 16px;
            border: 16px solid orange;
            background-color: white;
            z-index: 1002;
            overflow: auto;
        }
    </style>
    <scripet type="text/javascript" src="${pageContext.request.contextPath}/H1/Js/j1.js" language="javascript"></scripet>
</head>

<body>
<div align="center">
    <%
        request.setCharacterEncoding("UTF-8");//设置统一字符编码
        String name = request.getParameter("unrule_record");
   %>

    <div id="light" class="white_content">
        <a href="javascript:void(0)" onclick="document.getElementById('light').style.display='none';document.getElementById('fade').style.display='none'"><img width="1000" height="700px" id="img" alt="" src="Download?unrule_record=<%=request.getParameter("unrule_record")%>"></a>
    </div>

    <div id="fade" class="black_overlay"></div>
        <a href="javascript:void(0)" onclick="document.getElementById('light').style.display='block';document.getElementById('fade').style.display='block'"> <img width="400" id="imgf" alt="" src="Download?unrule_record=<%=request.getParameter("unrule_record")%>"></a>
</div>
<table>
    <tr class="text-c">
        <th>序号</th>
        <th>姓名</th>
        <th>电话</th>
        <th>车牌</th>
        <th>违章记录</th>
        <th>处理</th>
        <th>管理</th>
    </tr>
    <tbody>
    <c:forEach var="unruleCar" items="${unRuleCars}" varStatus="i">
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
                <input type="text" value="<%=request.getParameter("unrule_record")%>" readonly="true" name="unrule_record" class="input-text" />
            </td>
            <td class="text">
                <input type="text" value="${unruleCar.record_deal}" name="record_deal" class="input-text" />
            </td>
            <td>
                <input type="submit" class="btn" value="添加" onclick="window.location.href='add.jsp'" />
                <input type="button" class="btn" value="修改" onclick="window.location.href='add.jsp'"/>
                <input type="button" class="btn" onclick="confirmAndRedirect('您是否删除${unruleCar.name}的信息？', '${pageContext.request.contextPath}//roleMgr?_sign=delete&id=${role.id}')" value="删除" />
                <input type="button" class="btn" value="删除" onclick = "confirmAndRedirect('您是否删除${unruleCar.name}的信息？', '${pageContext.request.contextPath}/delete.jsp')"/>
            </td>
        </tr>
        </form>
    </c:forEach>
    </tbody>
    </table>

</div>
</body>
</html>
