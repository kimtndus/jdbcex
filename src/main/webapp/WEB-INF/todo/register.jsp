<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/jdbcex/todo/register" method="post">
    <div>
        <input type="text" name="title" placeholder="해야할 일을 등록하세요.">
    </div>
    <div>
        <input type="date" name="dueDate">
    </div>
    <p></p>
    <p></p>
    <p></p>

    <div>
        <button type="reset">RESET</button>
        <button type="submit">REGISTER</button>
    </div>
</form>
</body>
</html>
