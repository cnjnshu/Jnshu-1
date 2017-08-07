<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/6/13
  Time: 11:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <link rel="stylesheet" href="/css/bootstrap.min.css">
    <title>学生信息修改</title>
</head>
<body>
<div class="row" style="margin-top: 30px;">
    <div class="col-lg-2"></div>
    <div class="col-lg-6">
        <c:if test="${!empty error}">
            <div class="alert alert-danger" role="alert">${error}</div>
        </c:if>

        <form:form action="/student/update" method="post">
            <div class="form-group">
                <label for="name">姓名:</label>
                <input type="text" class="form-group" id="name" name="name" value="${student.name}">
            </div>

            <div class="form-group">
                <label for="stuId">学号:</label>
                <input type="number" class="form-group" id="stuId" name="stuId" value="${student.stuId}">
            </div>

            <div class="form-group">
                <label for="createAt">创建于:</label>
                <input type="number" class="form-group" id="createAt" name="createAt" value="${student.createAt}">
            </div>

            <div class="form-group">
                <label for="updateAt">更新于:</label>
                <input type="number" class="form-group" id="updateAt" name="updateAt" value="${student.updateAt}">
            </div>

            <input type="hidden" name="id" value="${student.id}">
            <button type="submit" class="btn btn-default">提交</button>
        </form:form>
    </div>
</div>
</body>
</html>
