<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Todo List</title>
</head>
<body>
<h1>Todo List</h1>

<ul>
    <c:forEach items="${dtoList}" var="dto">

        <script>
            console.log("list.jsp 도착");
        </script>


        <li>
            <span><a href="/jdbcex/todo/read?tno=${dto.tno}">${dto.tno}</a></span>
            <span>${dto.title}</span>
            <span>${dto.dueDate}</span>
            <span>${dto.finished? "완료": "미완료"}</span>
        </li>
    </c:forEach>
</ul>

</body>
</html>
