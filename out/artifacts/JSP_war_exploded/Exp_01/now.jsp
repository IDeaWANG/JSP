<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  UserBean: wangbowangbo
  Date: 2019/3/13
  Time: 20:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>走动的时间(JSP)</title>
    <style type="text/css">
        .nowDiv {
            font-size: 32px;
        }

        #nowSpan {
            color: #ff0000;
            border-bottom: 2px dotted blue;
        }
    </style>

    <script type="text/javascript">
        reload();


        function reload() {
            setTimeout(function () {
                window.location.reload();
            }, 1000);
        }
    </script>
</head>
<body>
<div class="nowDiv">
    现在的时间是:<span id="nowSpan">
			<%SimpleDateFormat sdf = new SimpleDateFormat("HH:mm:ss");
			out.print(sdf.format(new Date()));
			%>
		</span>
</div>

</body>
</html>