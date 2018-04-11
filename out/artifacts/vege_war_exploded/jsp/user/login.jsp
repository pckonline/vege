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
    <link rel="stylesheet" href="/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/bootstrap.css">
    <link rel="stylesheet" href="/css/my.css">
    <script src="/js/jquery.js"></script>
    <script type="text/javascript" src="/js/myJs.js">
    </script>
    <script type="text/javascript" src="/js/bootstrap.min.js">
    </script>
    <script type="text/javascript" src="/js/jquery.min.js"></script>
</head>
<body>
<form name="fm" method="post">

    <div class="container-fluid" id="5f">
        <%--头--%>
        <div class="row" style="background-color: #f8f8f8;">
            <div class="col-xs-1" style="text-align: center">
            </div>
            <div class="col-xs-4" style="float: left;">
                <div class="col-xs-6" ><a href="/index.jsp">旅途会</a></div>
            </div>
        </div>
        <div class="row">
            <div class="col-xs-2"></div>
            <div class="col-xs-4">
            </div>
            <div class="col-xs-4">
                <div class="form-group">
                    <label for="username">username</label>
                    <input type="text" class="form-control" name="username" id="username" placeholder="用户名"
                           value="pckonline" />
                </div>
                <div class="form-group">
                    <label for="password">password</label>
                    <input type="password" class="form-control" name="password" id="password" placeholder="密码" value="111" />
                </div>
                <button type="button" class="btn btn-default" onclick="sub()">提交</button>
            </div>
        </div>
    </div>
</form>
</body>
<script language="JavaScript">
    function sub(){
        var username=fm.username.value;
        var password=fm.password.value;
        if(username==""||password==""){
            alert("请输入完整的信息！");
            return false;
        }
        fm.action="/user/insertUser";
        fm.submit();
    }
</script>
</html>
