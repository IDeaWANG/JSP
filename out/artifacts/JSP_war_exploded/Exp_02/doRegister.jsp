<%--
  Created by IntelliJ IDEA.
  User: wangbowangbo
  Date: 2019/3/20
  Time: 20:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.io.*,java.util.*" %>
<html>
<head>
    <title>doRegister!!!</title>
</head>
<body>
<p>
    <%
        String name = request.getParameter("name");
        String passwd = request.getParameter("passwd");
        String sex = request.getParameter("sex");
        String[] habies = request.getParameterValues("habbit");
    %>
</p>

<p>姓名：<%=name%>
</p>
<p>密码：<%=passwd%>
</p>
<p>性别：<%=sex%>
</p>
<p>爱好：<%
    if (habies != null) {
        for (int i = 0; i < habies.length; i++) {
            out.println(habies[i]);
        }
    }%>
</p>

</body>
</html>
