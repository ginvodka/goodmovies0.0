<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="s" uri="http://www.springframework.org/tags"%>
<html>
<head>

    <link rel="stylesheet" href="http://s3.amazonaws.com/codecademy-content/courses/ltp/css/bootstrap.css"/>
</head>

<body class="jumbotron">
<h1>GoodMovies!!</h1>
<h2>Movie List</h2>
    <ul>
    <c:if test="${not empty movies}">
        <c:forEach var="movie" items="${movies}">
        <li><a href="/movies/${movie.getId()}">${movie.getId()}</a>: ${fn:escapeXml(movie.getContent())}</li>
        </c:forEach>
    </c:if>
    </ul>
    <p ><a href="movies/mform">Add</a></p>


</body>
</html>