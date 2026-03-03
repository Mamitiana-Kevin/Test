<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Résultat</title>
    <style>
        body { font-family: Arial; margin: 40px; }
        .box { background: #e8f5e9; padding: 20px; border-radius: 8px; width: 400px; }
    </style>
</head>
<body>
    <h1>Étudiant enregistré avec succès !</h1>

    <div class="box">
        <p><strong>Nom :</strong> ${nom}</p>
        <p><strong>Prénom :</strong> ${prenom}</p>
        <p><strong>Date de naissance :</strong> ${dateNaissance}</p>
        <p><strong>Email :</strong> ${email}</p>
    </div>

    <br>
    <a href="${pageContext.request.contextPath}/etudiant">← Retour au formulaire</a>
</body>
</html>