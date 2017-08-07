<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="t" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" isELIgnored="false" %>

<link rel="stylesheet" href="http://apps.bdimg.com/libs/bootstrap/3.3.4/css/bootstrap.min.css">
<link href="${pageContext.request.contextPath}/resources/css/t11.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/resources/css/base.css" rel="stylesheet" type="text/css">

<!DOCTYPE html>
<html lang="en">
<%@ page session="false" %>
<!doctype html>
<!--page.jsp 主布局模板：引用其它模板来创建视图-->
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>首页</title>
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap.css">
    <link href="${pageContext.request.contextPath}/resources/css/Untitled-3.css" rel="stylesheet" type="text/css">
    <link href="${pageContext.request.contextPath}/resources/css/Untitled-1base.css" rel="stylesheet" type="text/css">
</head>
<body>
<!--导入header布局-->
<div id="header">
    <t:insertAttribute name="header" />
</div>
<!--导入body布局-->
<div id="content">
    <t:insertAttribute name="body" />
</div>
<!--导入footer布局-->
<div id="footer">
    <t:insertAttribute name="footer" />
</div>
</body>

<!-- 引入js渲染 -->
<script src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
<script  src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
</html>