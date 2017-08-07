<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <link rel="stylesheet" href="/css/bootstrap.min.css">
    <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
    <script src="/js/jquery.min.js"></script>
    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="/js/bootstrap.min.js"></script>
    <title>客户管理</title>
</head>
<body>
    <div class="row" style="margin-top: 30px">

        <div class="col-lg-6">
            <form:form action="/student/index" method="post" class="form-inline">
                <div class="form-group">
                    <label>姓名</label>
                    <input class="form-group" type="text" id="name" name="name" value="${name}" />
                </div>
                <div class="form-group">
                    <label>学号</label>
                    <input class="form-group" type="text" id="stuId" name="stuId" value="${stuId}" />
                </div>
                <button type="submit" class="btn btn-primary btn-group-sm">查询</button>
            </form:form>
        </div>

        <div class="col-lg-x2">
            <a href="/student/add" class="btn btn-primary btn-sm">添加</a>
        </div>
    </div>

    <table class="table table-hover">
        <thead>
            <tr>
                <th>学生姓名</th>
                <th>学号</th>
                <th>创建于</th>
                <th>修改于</th>
            </tr>
        </thead>
        <tbody>
            <c:if test="${!empty students}">
                <c:forEach items="${students}" var="students">
                    <tr>
                        <td>${students.name}</td>
                        <td>${students.stuId}</td>
                        <td>${students.createAt}</td>
                        <td>${students.updateAt}</td>

                        <td><a href="/student/update?id=${student.id}" type="button" class="btn btn-sm btn-warning">修改</a></td>
                    </tr>
                </c:forEach>
            </c:if>
        </tbody>
    </table>

    <div class="row">
        <div class="col-lg-10"></div>
        <div class="col-lg-2">
            <a class="pagination-prev btn btn-default" href="#">上一页</a>
            <a class="pagination-next btn btn-default" href="#">下一页</a>
        </div>
    </div>

    <script>
        $(function(){
            prev_href = "/student/index?page=${page-1 <= 0 ? 1 : page-1}";
            next_href = "/student/index?page=${page+1 >= pages ? pages : page+1}";

            param = "&name=" + $("#name").val() + "&stuId=" + $("#stuId").val();

            $(".pagination-prev").click(function () {
                location.href = prev_href + param;
            })

            $(".pagination-next").click(function () {
                location.href = next_href + param;
            })



        });
    </script>
</body>
</html>
