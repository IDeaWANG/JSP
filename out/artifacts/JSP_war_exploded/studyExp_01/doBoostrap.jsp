<%--
  Created by IntelliJ IDEA.
  User: wangbowangbo
  Date: 2019/4/4
  Time: 18:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>doBootstrap！</title>
</head>
<body>
<p>HELLO WORLD!
<%
    String name = request.getParameter("username");
    String psw = request.getParameter("password");

    out.print(name);
    out.print(psw);
%>
</p>
</body>
</html>
