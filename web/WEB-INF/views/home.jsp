<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 11/19/2019
  Time: 9:13 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Calculator</title>
</head>
<body>
<h1>Calculator</h1>
<form action="/calculator">
    <input type="number" name="num1">
    <input type="number" name="num2">
    <br/>
    <input type="submit" name="calculator" value="Addition(+)">
    <input type="submit" name="calculator" value="Subtraction(-)">
    <input type="submit" name="calculator" value="Multiplication(X)">
    <input type="submit" name="calculator" value="Division(/)">
</form>
    <c:if test="${result != null}">
        <p>Result = ${result}</p>
    </c:if>
</body>
</html>
