<%--
  Created by IntelliJ IDEA.
  User: online
  Date: 17-4-14
  Time: 下午12:26
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册页面</title>
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
                    <input type="text" class="form-control" name="username" id="username" placeholder="用户名:由数字或字母组成的6-12位字符，且首字母为英文"
                           value="" />
                </div>
                <div class="form-group">
                    <label for="password">password</label>
                    <input type="password" class="form-control" name="password" id="password" placeholder="密码" />
                </div>
                <div class="form-group">
                    <label for="password">password again</label>
                    <input type="password" class="form-control" name="passwordAgain" id="passwordAgain" placeholder="重复密码" />
                </div>
                <!--
                <div class="form-group">
                    <label for="verfiCode">validation code</label>
                    <input type="text" class="form-control" name="verfiCode" id="verfiCode" placeholder="验证码" />
                    <img style="width:130px;height: 50px" src="/Login_img" id="img1">
                    <a href="javascript:_change1()" class="btn btn-default btn-lg active" role="button">change</a>
                </div>
                -->
                <button type="button" class="btn btn-default" onclick="sub()">提交</button>
            </div>
            <div class="col-xs-2">
            </div>
        </div>
    </div>
</form>
</body>
<script language="JavaScript">
    function sub(){
        var username=fm.username.value;
        var password=fm.password.value;
        var passwordAgain=fm.passwordAgain.value;
        var regex="[a-zA-Z]";
        if(username==""||password==""||passwordAgain==""){
            alert("请输入完整的信息！");
            return false;
        }
        if(!username.substr(0,1).match(regex)){
            alert("首字母须为英文字母！");
            return false;
        }
        if(username.length>12||username.length<6){
            alert("用户名信息长度不符合规范！");
            return false;
        }
        if(password!=passwordAgain){
            alert("密码两次输入不一致！");
            return false;
        }
        fm.action="/user/insertUser";
        fm.submit();
    }
    function _change1(){
        var imgEle=document.getElementById("img1");
        imgEle.src ="/Login_img?a="+new Date().getTime();
    }
</script>
</html>
