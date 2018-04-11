<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>旅途会</title>
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/my.css">
    <script src="js/jquery.js"></script>
    <script type="text/javascript" src="js/myJs.js">
    </script>
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/yes.js">
    </script>
</head>
<body>
<form name="fm">
    <div class="container-fluid" id="5f">
        <div class="row" style="background-color: #f8f8f8;">
            <div class="col-xs-1" style="text-align: center">
            </div>
            <div class="col-xs-4" style="float: left;">
                <div class="col-xs-6" ><c:if test="${sessionScope.username!=null}">您好，${sessionScope.username}
                    欢迎来到：<a href="/index.jsp">旅途会</a></div>
                <div class="col-xs-3" ><a href="/Login_logout">注销</a></c:if></div>
        <c:if test="${sessionScope.username==null}">
            <div class="col-xs-3" ><a href="/jsp/user/login.jsp">马上登录</a></div>
        </c:if>
            <div class="col-xs-3" ><a href="/lv/login/register.jsp">免费注册</a></div>
            </div>
        <div class="col-xs-7" >
            <div class="col-xs-6" ></div>
            <div class="col-xs-2" ><a href="/lv/travel/teamtravel/merchantapply.jsp">商家报名</a></div>
            <div class="col-xs-2" ><a href="#">联系我们</a></div>
            <div class="col-xs-2" ><a href="#">帮助中心</a></div>
        </div>
    </div>
    <%--搜索
    <div class="row">
        <div class="col-xs-4"><img src="img/lgog_03.jpg" /></div>
        <div class="col-xs-4" style="z-index: 0;position: relative;top:38px;left: -48px;width: 350px;">
            <div class="input-group">
                    <input type="text" class="form-control"  name="keyword" aria-describedby="basic-addon1" placeholder="请输入关键字"/>
                    <span class="input-group-btn">
                        <button class="btn btn-default" type="button">Go!</button>
                    </span>
            </div>
        </div>
    </div>
    --%>
    <br/>
        111111111111111111111111111111111111111
    <br/>
    <%--选项--%>
    <div class="row">
        <nav class="navbar navbar-default" style="background-color: #43b149">
            <div class="container-fluid">
                <div class="col-xs-1"></div>
                <div class="col-xs-10">
                    <ul class="nav navbar-nav" style="color: #ffffff;font-size: 120%;">
                        <li style="margin-right: 5px;background-color: #ffffff;"><a href="#" style="color: #000000" onclick="changeToMainPage()">首页</a>
                        </li>
                        <li style="margin-right: 5px;"><button class="dropdown-toggle"
                                                               style="color:#fff;margin-left: 10px;background:none;border:0;cursor:pointer;position: relative;top: 11px;"
                                                               type="button"  onclick="changeToTeamTravel()">跟团游</button></li>
                        <li style="margin-right: 5px;"><button class="dropdown-toggle"
                                                               style="color:#fff;margin-left: 10px;background:none;border:0;cursor:pointer;position: relative;top: 11px;"
                                                               type="button"  onclick="changeToShareTravel()">旅行分享</button></li>
                        <li style="margin-right: 5px;"><button class="dropdown-toggle"
                                                               style="color:#fff;margin-left: 10px;background:none;border:0;cursor:pointer;position: relative;top: 11px;"
                                                               type="button"  onclick="changeToAdress()">地址信息</button></li>
                        <li style="margin-right: 5px;"><button class="dropdown-toggle"
                                                               style="color:#fff;margin-left: 10px;background:none;border:0;cursor:pointer;position: relative;top: 11px;"
                                                               type="button"  onclick="changeToActivity()">活动详情</button></li>
                        <li>
                            <div class="dropdown">
                                <button class="dropdown-toggle"
                                        style="color:#fff;margin-left: 10px;background:none;border:0;cursor:pointer;position: relative;top: 11px;"
                                        type="button" id="dropdownMenu5" data-toggle="dropdown" aria-haspopup="true"
                                        aria-expanded="true">
                                    分享社区
                                    <span class="caret"></span>
                                </button>
                                <ul class="dropdown-menu" aria-labelledby="dropdownMenu5" style="top: 33px;">
                                    <li><a href="#" onclick="changeToTeamCommunity()">跟团游社区</a></li>
                                    <li><a href="#" onclick="changeToSelfCommunity()" >自助游社区</a></li>
                                </ul>
                            </div>
                        </li>
                    </ul>
                </div>
                <div class="col-xs-1"></div>
                <!-- Collect the nav links, forms, and other content for toggling -->
            </div>
        </nav>
    </div>
    <div class="row">
        <iframe name="iframe1" id="iframe1" src="/lv/mainpage/mainpage.jsp" width="100%" height="100%">

        </iframe>
    </div>
</form>
</body>

</html>