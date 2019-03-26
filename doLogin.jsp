<%--
  Created by IntelliJ IDEA.
  User: wangbowangbo
  Date: 2019/3/20
  Time: 19:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>doLogin </title>

</head>
<body>
<jsp:useBean id="User" class="User">
<jsp:getProperty name="form" property="Username"/>
<jsp:getProperty name="User" property="Passwd"/>
</jsp:useBean>

<p>用户名：
<jsp:getProperty name="User" property="Username"/>
</p>
<p><jsp:getProperty name="User" property="Passwd"/>
</p>






</body>