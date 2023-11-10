
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Todo Modify/Remove </title>
</head>
<body>

<form id="form1" action="/jdbcex/todo/modify" method="post">
    <div>
        <input type="text" name="tno" value="${dto.tno}" readonly>
    </div>
    <div>
        <input type="text" name="title" value="${dto.title}" >
    </div>
    <div>
        <input type="date" name="dueDate" value="${dto.dueDate}">
    </div>
    <div>
        <input type="checkbox" name="finished" ${dto.finished ? "checked": ""} >
    </div>

    <div>
        <button type="submit">목록으로</button>
    </div>
</form>

<form id="form2" action="/jdbcex/todo/remove" method="post">
    <input type="hidden" name="tno" value="${dto.tno}" readonly>
    <div>
        <button type="submit">해야할 일 삭제하기</button>
    </div>
</form>


</body>
</html>
