<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Todo Read</title>
</head>
<body>
<div>
    <input type="text" name="tno" value="${dto.tno}" readonly>
</div>
<div>
    <input type="text" name="title" value="${dto.title}" readonly>
</div>
<div>
    <input type="date" name="dueDate" value="${dto.dueDate}">
</div>
<div>
    <input type="checkbox" name="finished" ${dto.finished ? "checked": ""} readonly >
</div>
<a href="/jdbcex/todo/modify?tno=${dto.tno}">해야할일 수정 하러가기</a>
<div>
    <a href="/jdbcex/todo/modify?tno=${dto.tno}">해야할일 삭제 하러가기</a>
    <a href="/jdbcex/todo/list">해야할일 목록으로</a>
</div>
</body>
</html>
