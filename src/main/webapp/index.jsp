<%--
  Created by IntelliJ IDEA.
  User: online
  Date: 18-3-14
  Time: 下午12:24
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录页面</title>
    <script type="text/javascript" src="/js/jquery-1.5.1.min.js"></script>
</head>
<body>
<form name="fm" method="post">

    <button onclick="sendJson()">json数据交互测试</button>
</form>
</body>
<script language="JavaScript">
    function sendJson() {
        var json1 = {"userName" : "peter"};
        $.ajax({
            type:"post",
            url:"http://localhost/user/checkUser",
            contentType:"application/json",
            data: '{"userName" : "peter"}',
            dataType: {"userName" : "peter"},
            success: function (jsonResult) {
                alert(jsonResult);
            }
        });
    }
</script>
</html>
