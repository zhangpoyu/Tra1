<%--
  Created by IntelliJ IDEA.
  User: poyu
  Date: 2019/3/16/0016
  Time: 16:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<script type="text/javascript">
    function checkAddMgr()
    {
        var loginName = document.getElementById('loginName').value;
        if('' == loginName)
        {
            alert('登录名不能为空！');
            return false;
        }

        var loginPwd = document.getElementById('loginPwd').value;
        if('' == loginPwd)
        {
            alert('密码不能不能为空！');
            return false;
        }

        var name = document.getElementById('name').value;
        if('' == name)
        {
            alert('用户姓名不能为空！');
            return false;
        }


        var birth = document.getElementById('birthday').value;
        if('' == birth)
        {
            alert('出生日期未选择！');
            return false;
        }


        var role = document.getElementById('role').value;
        if('' == role)
        {
            alert('角色未选择！');
            return false;
        }

        return true;
    }onclick="return checkAddMgr();"
</script>

</body>
</html>
