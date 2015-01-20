<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="s" uri="http://www.springframework.org/tags"%>
<html>
<head>

    <link rel="stylesheet" href="http://s3.amazonaws.com/codecademy-content/courses/ltp/css/bootstrap.css"
</head>

<body>
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

    <div class="jumbotron">
        <div class="container">
            <h1>Hello, world!</h1>
            <p>This is a template for a simple marketing or informational website. It includes a large callout called a jumbotron and three supporting pieces of content. Use it as a starting point to create something more unique.</p>
            <p><a class="btn btn-primary btn-lg" href="#" role="button">Learn more &raquo;</a></p>
        </div>
    </div>
</body>
</html>