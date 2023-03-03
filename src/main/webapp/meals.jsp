<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.time.format.DateTimeFormatter" %>
<%--<jsp:useBean id="meal" class="ru.javawebinar.topjava.model.MealTo" scope="session"/>--%>
<html lang="ru">
<head>
    <title>Meals</title>
</head>
<body>
<h3><a href="index.html">Home</a></h3>
<table style="border: solid" border="1">
    <caption>Meals</caption>
    <tr>
        <th>Date, time</th>
        <th>Description</th>
        <th>calories</th>
<%--        <th>excess</th>--%>
    </tr>
    <c:forEach items="${mealsList}" var="meal">
        <tr <c:if test="${meal.excess eq true}">style="color: red"</c:if>
            <c:if test="${meal.excess ne true}">style="color: green"</c:if>>
            <td>${meal.dateTime.format( DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm"))}</td>
            <td>${meal.description}</td>
            <td>${meal.calories}</td>
<%--            <td>${meal.excess}</td>--%>
            <td><a href ="meals?action=edit&id=${meal.id}">edit</a></td>
            <td><a href="meals?action=delete&id=${meal.id}">delete</a></td>
        </tr>

    </c:forEach>
</table>
</body>
</html>