<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<body>

<p><a href="/musers">Users</a></p>

<c:if test="${not empty user}">
    <h2>User ${user.getUsername()}</h2>
    <p>E-mail: ${user.getEmail()}</p>

    <c:if test="${not empty user.getMovies()}">
        <h3>User Movies/h3>
        <c:forEach var="movie" items="${user.getMovie()}">
            <li><a href="/movies/${movie.getId()}">${movie.getId()}</a>: ${fn:escapeXml(movie.getContent())}</li>
        </c:forEach>
    </c:if>
</c:if>

</body>
</html>
