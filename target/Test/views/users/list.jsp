<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>${title}</title>
\
</head>
<body>
    <h1>${title}</h1>
    <p>Framework by <strong>YOU</strong> - The Java God</p>
    
    <c:choose>
        <c:when test="${not empty users}">
            <ul>
                <c:forEach var="user" items="${users}">
                    <li>${user.name} - ${user.email}</li>
                </c:forEach>
            </ul>
        </c:when>
        <c:otherwise>
            <p>No users found.</p>
        </c:otherwise>
    </c:choose>

    <br>
    <a href="../hello">Back to Hello</a>
</body>
</html>