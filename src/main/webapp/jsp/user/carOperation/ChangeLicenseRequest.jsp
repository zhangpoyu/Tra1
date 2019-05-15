<%--
  Created by IntelliJ IDEA.
  User: poyu
  Date: 2019/4/24/0024
  Time: 16:22
  To change this template use File | Settings | File Templates.
--%>
        <%@ page contentType="text/html;charset=UTF-8" language="java" %>
        <html>
        <head>
            <style type="text/css">
                body{
                    background: #cccccc;
                }
                .email_content{
                    text-align: center;
                }
            </style>
        </head>
<body>
<section style="text-align:center;">
    <form action="SendEmail" method="post">
        <div>
            邮箱：<input type="text" name="receptor" class="text" maxlength="185"><br/><br>
        </div>
        <div>
            车牌：<input type="text" name="car_number" class="text" maxlength="185"><br/><br>
        </div>
        <div class="email_content">
            <textarea type="textarea" placeholder="请在此处输入申请换牌理由" rows="5" cols="20" name="Content" class="text" maxlength="85"></textarea>
        </div>
        <div style="margin-top:10px">
            <input type="submit" value="提交"/>
            <input type="reset" value="重置"/>
        </div>
    </form>
</section>
</body>
</html>
</title>
</head>
<body>

</body>
</html>
