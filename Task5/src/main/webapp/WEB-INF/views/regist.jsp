<%--
  Created by IntelliJ IDEA.
  User: LALH
  Date: 2017/5/18
  Time: 17:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">

    <title>注册页面</title>
    <%
        HttpSession s = request.getSession();
    %>

</head>

<body>
<h2>用户注册：</h2>
<div class="row" style="margin-top: 150px;">
    <div class="col-xs-4"></div>
    <div class="col-xs-4" style="text-align: center">
        <c:if test="${!empty param.error}">
            <div class="alert alert-danger" role="alert">${param.error}</div>
        </c:if>

        <form:form action="/regist" method="post">
            <div class="form-group">
                <label>用户名: </label>
                <input  class="form-group" type="text" id="name" name="name" >
            </div>

            <div class="form-group">
                <label>密&nbsp;&nbsp;码: </label>
                <input class="form-group" type="text" name="password" id="password">
            </div>

            <button type="submit" class="btn btn-default">注册</button>
            <a href="/login" class="btn btn-default">登陆</a>

        </form:form>
    </div>
    <div class="col-lg-3"></div>
</div>

<link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">


</body>
</html>

