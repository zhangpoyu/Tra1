<%-- Created by IntelliJ IDEA. --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
    <script type="text/javascript">
        function change() {
            var pic = document.getElementById("preview"),
                file = document.getElementById("unrule_reason");
            var ext = file.value.substring(file.value.lastIndexOf(".") + 1).toLowerCase();
            // gif在IE浏览器暂时无法显示
            if (ext != 'png' && ext != 'jpg' && ext != 'jpeg') {
                alert("图片的格式必须为png或者jpg或者jpeg格式！");
                return;
            }
            var isIE = navigator.userAgent.match(/MSIE/) != null,
                isIE6 = navigator.userAgent.match(/MSIE 6.0/) != null;
            if (isIE) {
                file.select();
                var reallocalpath = document.selection.createRange().text;
                // IE6浏览器设置img的src为本地路径可以直接显示图片
                if (isIE6) {
                    pic.src = reallocalpath;
                } else {
                    // 非IE6版本的IE由于安全问题直接设置img的src无法显示本地图片，但是可以通过滤镜来实现
                    pic.style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod='image',src=\"" + reallocalpath + "\")";
                    // 设置img的src为base64编码的透明图片 取消显示浏览器默认图片
                    pic.src = 'data:image/gif;base64,R0lGODlhAQABAIAAAP///wAAACH5BAEAAAAALAAAAAABAAEAAAICRAEAOw==';
                }
            } else {
                html5Reader(file);
            }
        }

        function html5Reader(file) {
            var file = file.files[0];
            var reader = new FileReader();
            reader.readAsDataURL(file);
            reader.onload = function (e) {
                var pic = document.getElementById("preview");
                pic.src = this.result;
            }
        }
    </script>
</head>
<body>
<div align="center">
    <form action="Upload" method="post" enctype="multipart/form-data">
        <table>
            <tr>
                <td>罚款原因：</td>
                <td><input type="text" name="unrule_reason">
                </td>
            </tr>
            <tr>
                <td>选择上传的图片</td>
                <td>
                    <input id="unrule_reason" type="file" name="Filename" onchange="change()">
                </td>
            </tr>
            <tr>
                <td align="center" colspan="2"><input id="button" type="submit" value="上传"> <a id="a" href="show_img.jsp">查看已上传图片</a>
                </td>
            </tr>
        </table>
        <p>预览:</p>
        <p>
            <img id="preview" alt="" name="pic"/>
        </p>
    </form>
</div>
</body>
</html>