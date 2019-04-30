<%--
  Created by IntelliJ IDEA.
  User: wangbowangbo
  Date: 2019/4/27
  Time: 10:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8" %>
<%@ page import="java.io.*,java.util.*" %>
<html>
<head>
    <title>reflesh</title>
</head>
<body>
<html>
<head>
    <title>自动刷新实例</title>
</head>
<body>
<jsp:useBean id="reflash" class="cn.jsp.studyExp_02.Reflash" scope="application"/>
<h2>自动刷新实</h2>
<div>
    <%
        // 设置每隔5秒刷新一次
        response.setIntHeader("Refresh", 1);
        // 获取当前时间

        out.println("当前时间为: " + reflash.reflash() + "\n");
    %>
</div>

</body>
</html>

</body>
</html>
