<%@ page import="cn.jsp.Exp_04.Product" %>
<%@ page import="java.util.List" %>
<%--
  Created by IntelliJ IDEA.
  User: wangbowangbo
  Date: 2019/4/20
  Time: 15:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Product Page</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="https://cdn.staticfile.org/font-awesome/4.7.0/css/font-awesome.css">
</head>

<body class="container mt-3">
<p>
    <button><a href="Cart.jsp">查看🛒</a></button>
</p>
<div class="card boder-success"></div>
<div class="card-header bg-success">商品列表</div>

<jsp:useBean id="productDao" class="cn.jsp.Exp_04.ProductDao" scope="application"></jsp:useBean>
<table class="table table-condensed">
    <tr>
        <td>ID</td>
        <td>名称</td>
        <td>单价</td>
        <td>加入购物车</td>
    </tr>


        <%
    List<Product> product1 = productDao.getAll();
    for (Product p:product1) {
    %>

    <div>
        <tr>
            <td><%=p.getId()%>
            </td>
            <td><%=p.getName()%>
            </td>
            <td><%=p.getPrices()%>
            </td>
            <td><a href="productIntoCart.jsp?action=add&id=<%=p.getId()%> " role="button"><i class="fa fa-shopping-cart"
                                                                                             style="font-size:24px;color:aqua"></i></a>
            </td>
        </tr>
    </div>

        <%
    }
%>


</body>
</html>
