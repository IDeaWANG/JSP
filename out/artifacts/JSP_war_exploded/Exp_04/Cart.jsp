<%@ page import="cn.jsp.Exp_04.ProductInCart" %>
<%@ page import="java.util.List" %>
<%@ page import="cn.jsp.Exp_04.ProductInCart" %>
<%@ page import="java.text.DecimalFormat" %>
<%@ page import="java.math.BigDecimal" %><%--
  Created by IntelliJ IDEA.
  User: wangbowangbo
  Date: 2019/4/20
  Time: 16:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Cart</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"/>
    <link href="//cdn.bootcss.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="https://cdn.staticfile.org/font-awesome/4.7.0/css/font-awesome.css">
</head>

<p>
    <jsp:useBean id="cartDao" class="cn.jsp.Exp_04.CartDao" scope="session"></jsp:useBean>
        <%
		float total = 0;
//		float moneytotal = 0;
		String action = request.getParameter("action");
		String id= request.getParameter("id");
		if("delete".equals(action)){
            cartDao.delete(Integer.parseInt(id));
            response.sendRedirect("Cart.jsp");
        return;
        }else if("clear".equals(action)){
            cartDao.clear();
            response.sendRedirect("Cart.jsp");
            return;
            }
%>
    <body class="container mt-3">
    <button><a href="product.jsp">继续购物⬅️</a></button>
    <div class="card boder-success"></div>
    <div class="card-header bg-success">我的购物车</div>


    <table class="table table-condensed">

        <tr>
            <td>ID</td>
            <td>名称</td>
            <td>单价</td>
            <td>数量</td>
            <td>小计</td>
            <td>删除</td>
            <td>加入购物车</td>
        </tr>


<p>
        <%
    List<ProductInCart> product1 = cartDao.list();
            for (ProductInCart p:product1) {
                total += p.getCount() * p.getPrices();
                BigDecimal a = new BigDecimal(total);
        float monytotal = a.setScale(2,BigDecimal.ROUND_HALF_UP).floatValue();//将float类型的数字，固定只有两个小数；

                float mony = p.getCount()*p.getPrices();
                BigDecimal b = new BigDecimal(mony);
        float mony1 = b.setScale(2,BigDecimal.ROUND_HALF_UP).floatValue();//将float类型的数字，固定只有两个小数；

%>


    <%--<table class="from-group">--%>
<div>
    <tr>
        <td><%=p.getId()%>
        </td>
        <td><%=p.getName()%>
        </td>
        <td><%=p.getPrices()%>
        </td>
        <td><%=p.getCount()%>
        </td>
        <td><%=mony1%>
        </td>
        <td><a href="Cart.jsp?id=<%=p.getId()%>&action=delete" style="color: black">➖1</a></td>
        <td><a href="productIntoCart.jsp?action=add&id=<%=p.getId()%> " role="button"><i class="fa fa-shopping-cart"
                                                                                         style="font-size:24px;color:aqua"></i></a>
    </tr>
</div>


<%
    }
%>
</p>
</table>

<div class="card-footer">
    <button class="btn btn-danger  float-right mr-3">
        <a href="Cart.jsp?action=clear">清空</a></button>
    <div>
        总计：<%
        BigDecimal a = new BigDecimal(total);
        float monytotal = a.setScale(2, BigDecimal.ROUND_HALF_UP).floatValue();
        out.print(monytotal);
    %>
    </div>

</div>
</body>
</html>
