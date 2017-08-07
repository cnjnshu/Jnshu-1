<%@ page contentType="text/html; charset=UTF-8" language="java" isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1">
    <script src="http://how2j.cn/study/js/jquery/2.0.0/jquery.min.js"></script>
    <link href="http://how2j.cn/study/css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
    <script src="http://how2j.cn/study/js/bootstrap/3.3.6/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css">
    <title>登陆</title>
</head>
<body ng-app="myAPP" ng-controller="myCtrl">
<div id="bac">
    <div id="Login_box">
        <span class="sp">后台登陆</span>
        <input id="int1" type="text" class="form-control int1" placeholder="账号" ng-model="Uname"/>
        <input id="int2" type="password" class="form-control int2" placeholder="密码" ng-model="Upwd"/>
        <div ng-model="red" class="red">

        </div>
        <button class="btn"  ng-click="getValue()">登陆</button>
    </div>
</div>
<script src="https://cdn.bootcss.com/angular.js/1.6.3/angular.min.js"></script>
<script src="https://cdn.bootcss.com/angular-ui-router/1.0.0-rc.1/angular-ui-router.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/style.js"></script>
</body>
</html>