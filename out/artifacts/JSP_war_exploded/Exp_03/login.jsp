<%@ page import="java.util.*" pageEncoding="UTF-8"%>
<%--
  Created by IntelliJ IDEA.
  User: wangbowangbo
  Date: 2019/4/3
  Time: 15:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>login!!!</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"/>
</head>
<body class="container mt-3">

<form action="doLogin.jsp" method="POST" target="_blank">
<div class="card border-success">
    <div class="card border bg-success">登陆信息</div>
    <div class="card-body">
        <div class="form-group">
            <label>用户名</label>
            <input type="text" class="form-control" name="username"  /></div>
        <label>密码</label>
    <input type = "password" class="form-control" name = "passwd" value="123"/>
    </div>
</div>
    <div class="card-footer">
   <input type="submit" class="btn btn-primary float-right" value="提交" class="pull-right" />
       <input type="reset"  class="btn btn-danger float-right mr-3" value="重置" />
</div>
</form>
</body>
</html>

