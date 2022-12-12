[#ftl]
<!DOCTYPE html>
<html lang="cs">
<head>
    <meta charset="UTF-8">
    <title>Můj blog</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" type="image/png" href="/images/favicon.png">
</head>
<body>
<h1>Vybraný post z blogu:</h1>
<h2>${vybranyPost.title}</h2>
<p>${vybranyPost.slug}</p>
<p>${vybranyPost.perex}</p>
<p>${vybranyPost.body}</p>
<p>Autor: ${vybranyPost.author}</p>
<p>${vybranyPost.published?date?string} </p>


</body>
</html>
