<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
    <title>Movie Form</title>
</head>
<body>

<c:choose>
    <c:when test="${movie.getId()>0}">
        <h3>Update Movie</h3>
        <c:set var="method" value="PUT"/>
        <c:set var="action" value="/movies/${movie.getId()}"/>
    </c:when>
    <c:otherwise>
        <h3>Create Movie</h3>
        <c:set var="method" value="POST"/>
        <c:set var="action" value="/movies"/>
    </c:otherwise>
</c:choose>

<form:form method="${method}" action="${action}" modelAttribute="movie">
    <table>
        <tr>
            <td><form:label path="content">Content</form:label></td>
            <td><form:input path="content"/> <i><form:errors path="content"></form:errors></i></td>
        </tr>
        <tr>
            <td><form:label path="email">E-Mail</form:label></td>
            <td><form:input path="email"/> <i><form:errors path="email"></form:errors></i></td>
        </tr>
        <tr>
            <td><form:hidden path="date"/> <i><form:errors path="date"></form:errors></i></td>
        </tr>
        <tr>
            <td><input type="submit" value="Submit" /></td>
        </tr>
    </table>
</form:form>

</body>
</html>
