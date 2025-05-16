<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Lê Việt Hoàng</title>
    <style>
        html, body {
            height: 100%;
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
        }

        body {
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .container {
            background-color: #fff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 2px 8px rgba(0, 0, 0, 0.2);
            text-align: center;
            width: 400px;
        }

        h1 {
            color: #333;
            margin-bottom: 20px;
        }

        form {
            margin-bottom: 20px;
        }

        input[type="text"] {
            width: calc(100% - 22px);
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }

        .warning {
            color: red;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Bảng điền thông tin</h1>
        <form action="count" method="post">
            <input type="text" name="inputString" />
            <br />
            <input type="submit" value="OK" />
        </form>

        <c:if test="${not empty requestScope.inputString}">
            <p>Input String: <c:out value="${requestScope.inputString}"/></p>
            <p>Character Count: <c:out value="${requestScope.count}"/></p>
            <c:if test="${requestScope.count > 10}">
                <p class="warning">The input string is longer than 10 characters!</p>
            </c:if>
        </c:if>
    </div>
</body>
</html>
