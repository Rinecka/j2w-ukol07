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
<h1>Na tomto blogu najdete tyto posty</h1>

<ul>
    [#list seznam.content as vybranyPost]
        <li>
            <a href="/post/${vybranyPost.slug?no_esc}"> ${vybranyPost.title}</a>
            <br>
            <p>${vybranyPost.published?date?string} </p>
            <p>${vybranyPost.slug} </p>
            <p>${vybranyPost.perex} </p>
            <p>${vybranyPost.body} </p>
            <p>Autor:${vybranyPost.author}</p>
        </li>
        <br>
    [/#list]
</ul>
</body>
</html>
