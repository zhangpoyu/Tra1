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
        body {
            background: #cccccc;
        }

        .email_content {
            text-align: center;
        }

        .submit {
            margin-top: 10px;
        }
    </style>
    <script type="text/javascript">
       function check() {
           var allforms = document.forms;
           var receptor = allforms[0].receptor.value;
           if('' == receptor)
           {
               alert("邮件地址不能为空");
               return false;
           }else if(!/^([a-zA-Z0-9]+[_|_|.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|_|.]?)*[a-zA-Z0-9]+\.(?:com|cn)$/.test(receptor))
           {
               alert("邮件输入错误，请重新输入！")
               return false;
           }
           var Content = allforms[0].Content.value;
           if('' == Content)
           {
               alert("请输入违章信息！");
               return false;
           }
       }
    </script>
</head>
<body>
<section style="text-align:center;">
    <form action="SendEmail" method="post">
        <div>
            邮箱：<input type="text" name="receptor" class="text" MaxLength=""><br/><br>
        </div>
        <div class="email_content">
            <textarea type="textarea" placeholder="请在此处输入违章信息" rows="5" cols="20" name="Content" class="text" MaxLength=""></textarea>
        </div>
        <div class="submit">
            <input type="submit" value="发送" onclick="return check()"/>
        </div>
    </form>
</section>
</body>
</html>
