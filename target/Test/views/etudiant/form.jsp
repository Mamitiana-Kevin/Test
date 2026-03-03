<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Ajouter un Étudiant</title>
    <style>
        body { font-family: Arial; margin: 40px; }
        input, button { padding: 8px; margin: 5px 0; width: 300px; }
        button { background: #3498db; color: white; border: none; cursor: pointer; }
    </style>
</head>
<body>
    <h1>Ajouter un Étudiant</h1>

    <form action="${pageContext.request.contextPath}/etudiant" method="post">
        <div>
            <label>Nom :</label><br>
            <input type="text" name="nom" required>
        </div>
        <div>
            <label>Prénom :</label><br>
            <input type="text" name="prenom" required>
        </div>
        <div>
            <label>Date de naissance :</label><br>
            <input type="date" name="dateNaissance" required>
        </div>
        <div>
            <label>Email :</label><br>
            <input type="email" name="email">
        </div>
        <br>
        <button type="submit">Enregistrer</button>
    </form>
</body>
</html>