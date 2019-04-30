<%--
  Created by IntelliJ IDEA.
  User: wangbowangbo
  Date: 2019/4/22
  Time: 23:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>ProductIntoCart</title>
</head>
<jsp:useBean id="cartDao" class="cn.jsp.Exp_04.CartDao" scope="session"></jsp:useBean>
<body>
<p>
    <%

        String action = request.getParameter("action");
        try {
            String id = request.getParameter("id");
            if (action == null) {
                action = "";
//            out.print("bhuiahihih");
            } else if ("add".equals(action)) {
                // id = request.getParameter("id");
                cartDao.add(Integer.parseInt(id));
                out.print("jopoop");
                response.sendRedirect("Cart.jsp");
                return;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    %>
</p>
</body>
</html>
