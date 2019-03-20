<%--
  Created by IntelliJ IDEA.
  User: wangbowangbo
  Date: 2019/3/20
  Time: 20:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.io.*,java.util.*" %>
<html>
<head>
    <title>doLogin</title>
</head>
<body>
<p>
<%
String name = new String((request.getParameter("Username")).getBytes("ISO-8859-1"),"UTF-8");
%>
<p>用户名：    <%=name%></p>
</p>
<p>
    <%String passwd = new String((request.getParameter("Passwd")).getBytes("ISO-8859-1"),"UTF-8");
    %>
<p>口令：<%=passwd%></p>
</p>

</body>
</html>
