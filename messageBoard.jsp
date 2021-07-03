<%--
  Created by IntelliJ IDEA.
  User: wangbowangbo
  Date: 2019/3/20
  Time: 20:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ page import="java.io.*,java.util.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>messageBoard!!!!</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"/>
</head>

<body class="container mt-3">
<div class="card boder-success"></div>
<div class="card-header bg-success">编辑留言</div>

<form action="showMessage.jsp" method="POST" target="_blank">
    <div class="card-border">

        <div class="from-group">
            <label>标签</label>
            <input type="text" class="from-control" name="label" value="关于textarea标签"/>
        </div>


        <div class="from-group">
            <label>标签</label>
            <input type="text" class="from-control" name="content" value="我是文本区内容"/>内容
        </div>

        <div class="card-footer">
            <input type="submit" class="btn btn-primary float-right " name="提交"/>
            <input type="reset" class="btn btn-danger  float-right mr-3" name="重置"/>
        </div>


    </div>
</form>
</body>
</html>
