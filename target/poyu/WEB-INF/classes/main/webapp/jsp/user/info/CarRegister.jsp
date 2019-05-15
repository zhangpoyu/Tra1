<%--
  Created by IntelliJ IDEA.
  User: poyu
  Date: 2019/3/11/0011
  Time: 23:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="${pageContext.request.contextPath}/H1/css/h4_UserInf.css" rel="stylesheet" type="text/css">
    <script type="text/javascript">
        function check() {
            var allforms = document.forms;
            var name = allforms[0].name.value;
            if ('' == name) {
                alert('姓名不能为空！');
                return false;
            }
            var number = allforms[0].number.value;
            if ('' == number) {
                alert('电话号码不能为空！');
                return false;
            }
            if(!/^1[34578]\d{9}$/.test(number)){
                alert('手机号码有误，请重填');
                return false;
            }
            var id_card = allforms[0].id_card.value;
            if ('' == id_card) {
                alert('身份证号码不能为空！');
                return false;
            }
            if (!/(^\d{15}$)|(^\d{18}$)|(^\d{17}(\d|X|x)$)/.test(id_card)) {
                alert('身份证号码输入错误！');
                return false;
            }
            var email = allforms[0].email.value;
            if ('' == email) {
                alert('邮件信息不能为空！');
                return false;
            }
            if(!/^([a-zA-Z]|[0-9])(\w|\-)+@[a-zA-Z0-9]+\.([a-zA-Z]{2,4})$/.test(email))
            {
                alert('提示*请输入有效的E_mail！');
                return false;
            }
            var car_num = allforms[0].car_num.value;
            if ('' == car_num) {
                alert('车牌号不能为空！');
                return false;
            }
            if(!/^[京津沪渝冀豫云辽黑湘皖鲁新苏浙赣鄂桂甘晋蒙陕吉闽贵粤青藏川宁琼使领A-Z]{1}[A-Z]{1}[A-Z0-9]{4}[A-Z0-9挂学警港澳]{1}$/.test(car_num)) {
                alert('车牌号输入错误');
                return false;
            }
            var car_sign = allforms[0].car_sign.value;
            if ('' == car_sign) {
                alert('车牌不能为空！');
                return false;
            }
            var car_sty = allforms[0].car_sty.value;
            if ('' == car_sty) {
                alert('车辆类型不能为空！');
                return false;
            }
        }
    </script>
</head>
<body>
<h1 style="color:red;">${notice}</h1>
<form action="CarRegister" method="post">
    <div class="div1">
        <div class="div2">
            <h1>车辆户籍登记</h1>
            <div class="div3">
                <div class="t1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;姓名：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="name" value="" Maxlen=""/></div><br>
                <div class="t1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;电话：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="number" value="" Maxlen=""/></div><br>
                <div class="t2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;身份证：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="id_card" value="" Maxlen=""/></div><br>
                <div class="t1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;邮箱：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="email" value="" Maxlen=""/></div><br>
                <div class="t2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;车牌号：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="car_num" value="" Maxlen=""/></div><br>
                <div class="t1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;车牌：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="car_sign" value="" Maxlen=""/></div><br>
                <div class="t4">&nbsp;&nbsp;车辆类型：&nbsp;&nbsp;<input type="text" name="car_sty" value="" Maxlen=""/></div><br>
                    <input type="submit" name="submit" value="确认" onclick="return check()"/>&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="reset" name="reset" value="重置"/>
                    <input type="button" name="back" value="退出" onclick="window.location.href='../../../IndexInfo.jsp'"/>
            </div>
            </div>
        </div>
    </div>
</form>
</body>
</html>
