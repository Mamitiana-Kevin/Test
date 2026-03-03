<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Ajouter un Étudiant</title>
    <style>
        body { font-family: Arial; margin: 40px; max-width: 500px; }
        label { display: block; margin-top: 12px; font-weight: bold; }
        input { width: 100%; padding: 8px; margin-top: 4px; }
        button { margin-top: 20px; padding: 10px 25px; background: #2ecc71; color: white; border: none; cursor: pointer; }
        h2 { margin-top: 30px; color: #2980b9; }
    </style>
</head>
<body>
    <h1>Nouvel Étudiant</h1>

    <form action="${pageContext.request.contextPath}/etudiant" method="post">

        <label>Nom</label>
        <input type="text" name="nom" required>

        <label>Prénom</label>
        <input type="text" name="prenom" required>

        <label>Email</label>
        <input type="email" name="email">

        <h2>Adresse</h2>

        <label>Rue</label>
        <input type="text" name="adresse.rue">

        <label>Ville</label>
        <input type="text" name="adresse.ville" required>

        <label>Code Postal</label>
        <input type="text" name="adresse.codePostal">

        <button type="submit">Enregistrer</button>
    </form>
</body>
</html>