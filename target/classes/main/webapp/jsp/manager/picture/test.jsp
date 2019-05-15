<%--
  Created by IntelliJ IDEA.
  User: poyu
  Date: 2019/4/29/0029
  Time: 15:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<form enctype="multipart/form-data" name="form1">
    <input id="f" type="file" name="f"  />
    <input id="open" type="file" onchange="change()"/>
    <div class="upload">上传图片</div>
    <p>预览:</p>
    <p>
        <img id="preview" alt="" name="pic" />
    </p>
</form>



</body>
</html>
