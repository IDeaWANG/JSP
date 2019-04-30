<%--
  Created by IntelliJ IDEA.
  User: wangbowangbo
  Date: 2019/3/23
  Time: 19:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page errorPage="doErrorTest.jsp" %>
<html>
<head>
    <title>Error Occur Html</title>
</head>
<body>

<script>
    function click1(n) {

        // alert(n/0);
        return n;
    }

    function welcome(name,job) {
        alert("welcome"+name+";"+"job"+job);
    }
</script>
<button onclick="click1(10)" style="color: aqua" > 点击这里，调用函数！！！</button>
<button onclick="welcome('wangbo','engineer')" style="background-color: aqua ;font-size: 23px;color: blueviolet" >click！！！</button>
</body>
</html>
