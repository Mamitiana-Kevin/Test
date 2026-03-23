<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Upload réussi</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 40px; }
        .success {
            background: #d4edda;
            color: #155724;
            padding: 20px;
            border-radius: 8px;
            width: 450px;
        }
        ul { margin-top: 10px; }
    </style>
</head>
<body>

    <div class="success">
        <h2>Upload réussi !</h2>
        <p><strong>Nombre de fichiers reçus :</strong> ${nombreFichiers}</p>

        <p><strong>Fichiers uploadés :</strong></p>
        <ul>
            <c:forEach var="fichier" items="${fichiers}">
                <li>${fichier}</li>
            </c:forEach>
        </ul>
    </div>

    <br>
    <a href="${pageContext.request.contextPath}/upload">← Retour au formulaire</a>

</body>
</html>