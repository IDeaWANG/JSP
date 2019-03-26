<%--
  Created by IntelliJ IDEA.
  User: wangbowangbo
  Date: 2019/3/20
  Time: 20:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <title>register.com</title>
    <style>
        .p1{
            font-size: 32px;
        }
        .p2{
            font-size: 16px;
        }
        td{
            font-size: 10px;
        }
    </style>
</head>
<body>
<P class=" p1">创建您的电子邮件账号</P><br>
<p class=" p2">需要填写如下信息</p>
<form name="input" action="doRegister.jsp" method="POST">
<table border="1">
    <tr>
        <td>账号名</td>
        <td>
            <input type="text" align="center" name="name"> 126.com
        
        </td>
    </tr>

    <tr>
        <td >密码</td>
        <td>
            <input type="text" align="center" name="passwd"/>
        
        </td>
    </tr>
    <tr>
        <td>选择性别</td>
        <td>
            <input type="radio" name="sex" value="male"/>男<br>
            <input type="radio" name="sex" value="female"/>女
        </td>
    </tr>
    <tr>
        <td>爱好兴趣</td>
        <td>
            <input type="checkbox" name="habbit" value="网络"/>网络<br>
            <input type="checkbox" name="habbit" value="运动"/>运动<br>
            <input type="checkbox" name="habbit" value="游泳"/>游泳
        </td>
    </tr>
    <tr>
        <td><input type="reset" value="重填"/></td>
        <td>
            <input type="submit" value="提交" align="center"/>
       
        </td>
    </tr>
</table>
<／form>
</body>
</html>
