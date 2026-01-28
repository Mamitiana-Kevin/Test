<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>  
    <title>Formulaire de Nom</title>
</head>
<body>
<h2>Entrez votre nom</h2>
<form action="${pageContext.request.contextPath}/new/name" method="post">
    <label for="nom">Nom:</label>
    <input type="text" id="nom" name="nom" required>
    <br><br>
    <label for="age">Âge:</label>
    <input type="number" id="age" name="age" required>
    <br><br>
    <input type="submit" value="Soumettre">
</form>
</body>
</html>
