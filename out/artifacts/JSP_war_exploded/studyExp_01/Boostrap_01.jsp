<%--
  Created by IntelliJ IDEA.
  User: wangbowangbo
  Date: 2019/4/4
  Time: 18:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <!-- 为增强用户体验，使用了Bootstrap，仅需在自己的页面元素添加相应的class即可 -->
    <!-- 此处使用了网上的CDN（需联网），有兴趣者可访问http://www.bootcss.com自学 -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />
    <title>登录</title>
</head>

<body class="container mt-3">
<form action="doBoostrap.jsp" method="post">
    <div class="card border-success">
        <div class="card-header bg-success">登录信息</div>
        <div class="card-body">
            <div class="form-group">
                <label>用户名</label>
                <input type="text" class="form-control" name="username"/><!-- 注意name与后面的JavaBean一致 -->
            </div>
            <div class="form-group">
                <label>密码</label>
                <input type="password" class="form-control" name="password"/><!-- 注意name与后面的JavaBean一致 -->
            </div>
        </div>
        <div class="card-footer">
            <input type="submit" class="btn btn-primary float-right" value="登录" />
            <input type="reset" class="btn btn-danger float-right mr-3" value="重置" />
        </div>
    </div>
</form>
</body>
</html>
