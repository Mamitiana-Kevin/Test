<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Résultat</title>
    <style>
        body { font-family: Arial; margin: 40px; }
        .card { background: #e8f8f5; padding: 25px; border-radius: 10px; width: 450px; }
        h2 { color: #16a085; }
    </style>
</head>
<body>
    <h1>Étudiant enregistré !</h1>

    <div class="card">
        <h2>Informations</h2>
        <p><strong>Nom :</strong> ${etudiant.nom}</p>
        <p><strong>Prénom :</strong> ${etudiant.prenom}</p>
        <p><strong>Email :</strong> ${etudiant.email}</p>

        <h2>Adresse</h2>
        <p><strong>Rue :</strong> ${etudiant.adresse.rue}</p>
        <p><strong>Ville :</strong> ${etudiant.adresse.ville}</p>
        <p><strong>Code Postal :</strong> ${etudiant.adresse.codePostal}</p>
    </div>

    <br>
    <a href="${pageContext.request.contextPath}/etudiant">← Nouveau</a>
</body>
</html>