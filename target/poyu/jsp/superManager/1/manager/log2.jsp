<%--
  Created by IntelliJ IDEA.
  User: poyu
  Date: 2019/3/6/0006
  Time: 21:08
  To change this template use File | Settings | File Templates.
--%>

<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<html>
<head>
    <title>Title</title>
    <link href="${pageContext.request.contextPath}/main/webapp/H1/css/h2_register.css" rel="stylesheet" type="text/css">
    <script language="JavaScript">
        /*function myrefresh()
        {
            window.location.reload();
        }
        setTimeout('myrefresh()',1000); //指定1秒刷新一次 */
        function myrefresh(){
            history.go(1);
        }
    </script>
</head>
<body>
<h1>欢迎用户:${userName}</h1>
<div class="register">
    <input style="margin-left:1800px" type="button" class="register_bn" onclick="window.location.href='../../../../index.jsp'" value="注销">
</div>
<div class="div_success">

</div>

</body>
</html>
