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
    <title>doLogin2（无javaBean方法）</title>
</head>
<body>
<p>
        <%
String name = request.getParameter("username");
%>
<p>用户名：    <%=name%>
</p>
</p>
<p>
        <%String passwd = request.getParameter("passwd");
    %>
<p>口令：<%=passwd%>
</p>
</p>

</body>
</html>
