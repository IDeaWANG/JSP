<%--
  Created by IntelliJ IDEA.
  User: wangbowangbo
  Date: 2019/3/20
  Time: 20:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ page import="java.io.*,java.util.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>doLogin!!!</title>
</head>

<body>
<p>
    <%
        String site = "http://localhost:8080/Exp_03/messageBoard.jsp";
        String name = request.getParameter("username");
        String passwd = request.getParameter("passwd");
        if (name != null && passwd != null) {
            if ((name.startsWith("ahpu_") && (name.length() >= 6 && (name.length() <= 12)) && (passwd.equals("123")))) {
                session.setAttribute("usename", name);
                response.setStatus(response.SC_MOVED_PERMANENTLY);
                response.setHeader("Location", site);

            } else {
                out.print("用户名或密码输入错误！！");
            }
        } else {
            out.print("用户名和密码不可以为空！！");
        }


    %>
</p>
</body>
</html>
