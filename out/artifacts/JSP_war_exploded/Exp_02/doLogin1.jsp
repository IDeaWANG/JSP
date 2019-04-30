<%--
  Created by IntelliJ IDEA.
  User: wangbowangbo
  Date: 2019/3/20
  Time: 19:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="cn.jsp.Exp_02.User" %>

<html>
<head>
    <title>dologin1(javaBean方法)</title>

</head>
<body>
<p>
    <jsp:useBean id="Myuser" class="cn.jsp.Exp_02.User">
        <jsp:setProperty name="Myuser" property="username"/>
        <jsp:setProperty name="Myuser" property="passwd"/>
    </jsp:useBean>
</p>

<p>用户名：
    <jsp:getProperty name="Myuser" property="username"/>
</p>
<p>密码：
    <jsp:getProperty name="Myuser" property="passwd"/>
</p>
</body>
</html>