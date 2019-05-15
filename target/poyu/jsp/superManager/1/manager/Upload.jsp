<%-- Created by IntelliJ IDEA. --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
<body>
<div align="center">
    <form action="Upload" method="post" enctype="multipart/form-data">
        <table>
            <tr>
                <td>姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名：</td>
                <td><input id="name" type="text" name="username">
                </td>
            </tr>
            <tr>
                <td>违章编号：</td>
                <td><input id="unrule_record" type="text" name="unrule_record">
                </td>
            </tr>
            <tr>
                <td>选择上传的图片</td>
                <td><input id="file1" type="file" name="Filename">
                </td>
            </tr>
            <tr>
                <td align="center" colspan="2"><input id="button"
                                                      type="submit" value="上传"> <a id="a"
                                                                                   href="../user/show_img.jsp">查看上传图片</a>
                </td>
            </tr>
        </table>
    </form>
</div>
</body>
</body>
</html>