<%--
  Created by IntelliJ IDEA.
  User: wangbowangbo
  Date: 2019/3/20
  Time: 21:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ page import="java.io.*,java.util.*" %>
<%@ page import="cn.jsp.Exp_03.MyTools" %>
<!DOCTYPE html>
<html>
<head>
    <title>showMessage!</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"/>
</head>
<p>
    <%
        //    Date createTime = new Date(session.getCreationTime());
        Date lastAccessTime = new Date(session.getLastAccessedTime());
        request.setCharacterEncoding("UTF-8");
        String labelContent = request.getParameter("label");
        String textContent = request.getParameter("content");
        Integer visitCount = new Integer(0);
        labelContent = MyTools.change(labelContent);
        textContent = MyTools.change(textContent);


    %>
</p>

<body class="container mt-3">
<div class="card header-success"></div>
<table border="1">
    <tr bgcolor="#949494">
        <th>#</th>
        <th>留言者</th>
        <th>标题</th>
        <th>内容</th>
        <th>时间</th>
    </tr>

    <tr>
        <td><%=visitCount%>
        </td>
        <td><%=session.getAttribute("usename")%>
        </td>
        <td><%=labelContent%>
        </td>
        <td><%=textContent%>
        </td>
        <td><%=lastAccessTime%>
        </td>
    </tr>

</table>
</body>
</html>
