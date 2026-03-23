<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Upload de fichiers</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 40px; max-width: 500px; }
        label { display: block; margin-top: 15px; font-weight: bold; }
        input[type="file"] { margin-top: 5px; }
        button {
            margin-top: 25px;
            padding: 10px 25px;
            background: #3498db;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        button:hover { background: #2980b9; }
    </style>
</head>
<body>

    <h1>Uploader des fichiers</h1>

    <form action="${pageContext.request.contextPath}/upload" method="post" enctype="multipart/form-data">

        <label>Photo de profil :</label>
        <input type="file" name="photo" accept="image/*">

        <label>CV (PDF) :</label>
        <input type="file" name="cv" accept=".pdf">

        <label>Document supplémentaire :</label>
        <input type="file" name="document">

        <br>
        <button type="submit">Envoyer les fichiers</button>
    </form>

</body>
</html>