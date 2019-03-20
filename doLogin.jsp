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
    <title>get和set 语法</title>

</head>
<body>
<jsp:useBean id="form" class="User">
<jsp:getProperty name="form" property="Username"/>
<jsp:getProperty name="form" property="Passwd"/>
</jsp:useBean>

<p>用户名：
<jsp:getProperty name="form" property="Username"/>
</p>
<p><jsp:getProperty name="form" property="Passwd"/>
</p>






</body>